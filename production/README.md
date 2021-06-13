# MapServer production

e.g. including mapfiles

```
docker run --rm -e MS_MAPFILE=/srv/data/example.map -p 8010:80 --name mapserver-example -v `pwd`/example:/srv/data eu.gcr.io/cloudmark2/mapserver-base
```

```
http://localhost/?MAPFILE=SERVICE=WMS&VERSION=1.3.0&REQUEST=GetMap&BBOX=50,2,54,9&CRS=EPSG:4326&WIDTH=905&HEIGHT=517&LAYERS=example&STYLES=&FORMAT=image/png&DPI=96&MAP_RESOLUTION=96&FORMAT_OPTIONS=dpi:96&TRANSPARENT=TRUE
```

```
http://localhost:8010/?MAP=/srv/data/drainage/lier_drainage.map&SERVICE=WMS&VERSION=1.3.0&REQUEST=GetMap&BBOX=50,2,54,9&CRS=EPSG:4326&WIDTH=905&HEIGHT=517&LAYERS=drainage_pipe&STYLES=&FORMAT=image/png&DPI=96&MAP_RESOLUTION=96&FORMAT_OPTIONS=dpi:96&TRANSPARENT=TRUE
```

```
http://localhost:8010/?MAP=/srv/data/drainage/lillestrom_drainage.map&SERVICE=WMS&REQUEST=GetCapabilities
```
