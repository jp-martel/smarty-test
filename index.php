<?php
// CONFIG: Smarty Location
require("Smarty-lib/libs/Smarty.class.php");
date_default_timezone_set('America/Los_Angeles');
define("MY_PHP_ROOT", ".");

$smarty = new Smarty();

// CONFIG: Smarty Paths
//'templates' is where you store the files.
$smarty->setTemplateDir(MY_PHP_ROOT . "/smarty/templates");
//Create this directory if this does not exist
$smarty->setCompileDir(MY_PHP_ROOT . "/smarty/templates_c");
//Create this directory if this does not exist
$smarty->setCacheDir(MY_PHP_ROOT . "/smarty/cache");
$smarty->caching = true;
//http://www.smarty.net/docs/en/config.files.tpl
$smarty->setConfigDir(MY_PHP_ROOT . "/smarty/configs");
//http://www.smarty.net/docs/en/plugins
$smarty->setPluginsDir(MY_PHP_ROOT . "/smarty/smarty_plugins");

const DATA_PATH = './smarty/data/';

$template = null;
$action = safeGetString("action");
$actionStrings = explode('/', $action);
$params = array();
$params["baseurl"] = "./";

switch ($actionStrings[0]) {
    case "":
        // Load production data        
        $params["banners"] = getData("banners.json.php");
        $params["productions"] = getData("homepage-production.json.php");
        $template = "index.tpl";
        break;
    case "productions":
        $productions = getData("homepage-production.json.php")['productions'];
        $params["production"] = findProduction($productions, $actionStrings[1]);
        $params["relatedProductions"] = getCompanyProductions($productions, $params["production"]["company"] ?? null, 3);
        $params["baseurl"] .= "../";
        $template = "pages/productions.tpl";
        break;
    case "about":   
        $params["employees"] = getData("employees.json.php")['employees'];
        $params["baseurl"] .= "../";
        $template = "pages/about.tpl";
        break;
    default:
        if ($template == null) $template = "pages/" . $action . ".tpl";

        $templatePath = $smarty->getTemplateDir(); 
        if (!file_exists($templatePath[0] . $template)) {
            header('Location: /');
        }

        $num_of_slashes = substr_count($action, "/");
        for ($i = 0; $i <= $num_of_slashes; $i++) {
            $params["baseurl"] .= "../";
        }
        break;
}

if (isset($_POST)) {
    $smarty->assign("postValues", $_POST);
}

foreach ($params as $key => $value) {
    $smarty->assign($key, $value);
}

$smarty->display($template);

//Utility Functions
function safeGetString($name, $default = NULL)
{
    $result = $default;
    if (isset($_SERVER["REDIRECT_URL"]) == 1) {
        $result = strval(substr($_SERVER["REDIRECT_URL"], 1));
    } else if (isset($_GET[$name])) {
        $result = strval($_GET[$name]);
    } else if (isset($_POST[$name])) {
        $result = strval($_POST[$name]);
    }
    $result = str_replace(chr(13), '', $result);

    return $result;
}

function getData($fileName, $varName = 'json', $defaultPath = DATA_PATH)
{
    require($defaultPath . $fileName);
    $data = json_decode($$varName, TRUE);
    
    return processData($data);
}

function processData($data)
{
    foreach ($data as $key => $val) {
        if (gettype($val) === "array") {
            $data[$key] = processData($val);
        }
    }

    return $data;
}

function findProduction(&$productions, $url)
{
    foreach($productions as $key => $production) {
        if (isset($production["customUrl"]) && $production["customUrl"] === $url) {
            unset($productions[$key]);

            return $production;
        }
    }

    return null;
}

function getCompanyProductions($productions, $company, $limit)
{
    shuffle($productions);
    $productions = array_values($productions);
    $companyProductions = [];
    for ($i = 0; $i < count($productions) && count($companyProductions) < $limit; $i++) {
        $production = $productions[$i];
        if (isset($production['company']) && $production['company'] === $company) {
            $companyProductions[] = $production;
        }
    }

    return $companyProductions;
}
