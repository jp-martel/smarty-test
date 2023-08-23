{if !isset($baseurl) }
  {assign var="baseurl" value=""}
{/if}
{config_load file='app.conf'}
<!DOCTYPE html>
<html lang="en" class="h-100">

<head>
  <title>{#appTitle#}</title>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <base href="{$baseurl}" />
  <link rel="icon" type="image/x-icon" href="/img/favicon.ico">
  <link href="{$baseurl}css/bootstrap.min.css" rel="stylesheet">
  <link href="{$baseurl}css/style.css" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>

<!--[if lt IE 7]> <body class="lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>    <body class="lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>    <body class="lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!-->

<body class="h-100">
<!--<![endif]-->