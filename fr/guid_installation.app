# Floagg/WaterAPI, Guide d'installation

Pour utilisé l'api sur votre site internet, il vous faudras généré une "clé d'api" [Généré ma clé](https://floagg.org/my-account/new_key). Une fois la clé généré vous pourrez accéder au information de votre site, grace cette adress (ci-dessous).

```https://api.floagg.org/[KEY_API]/auth_website```

**`[KEY_API]`** doit étres remplacer par votre clé d'api.

La WaterAPI, vous permet de géré et recuperré le contenue de votre site internet grace à l'api de la WaterAPI. Si vous souhaiter faire un Blog, un Forum, ou autres la waterapi et celle qui vous faut.

Vous pouvez connecter la WaterAPI, avec n'importe qu'elle language supportant les requette **`HTTP`** avec la method **`POST`**.

##Connecter la WaterAPI avec PHP

Une fois avoir clé d'api et votre adresse de connection. Nous allons connecter l'api via PHP avec **`FILE_GET_CONTENTS`**
```
$adress = "https://api.floagg.org/L9Nd-k5kL-AkBR-A4DW-kIfW-L2m6-mOR5-miGH-5X9P-48kM/auth_website"; // api adresse + clé d'api
$HTTPBuild = http_build_query($mesDonneePostEnARRAY); // transformer la requette POST en requette HTTP
$headerHTTP = array("http"=>
  array(
    "method" => "POST",
    "header" => 'Content-Type: application/x-www-form-urlencoded',
    'content' => $HTTPBuild
  )
);
$context  = stream_context_create($headerHTTP);
$reponse = file_get_contents($adress, false, $context);
$array = json_decode($reponse, true);
```

Ce code, fait une requette **`POST`** avec **`FILE_GET_CONTENTS`** à l'API, pour récuperré les information dusite internet.