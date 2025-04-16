# React-Leaflet-Scribe

React component built on top of [React-Leaflet](https://github.com/PaulLeCam/react-leaflet) that integrates [Leaflet Scribe](https://github.com/yusufarsln98/leaflet-scribe) drawing features.

> **Note:** Leaflet Scribe is a fork of the original Leaflet drawing tools with enhancements and improvements.
>
> **Credit:** This package is forked from [react-leaflet-draw](https://github.com/alex3165/react-leaflet-draw) and adapted to work with Leaflet Scribe.

## Install

```
npm install react-leaflet-scribe
```

## Getting started

First, include leaflet & leaflet-scribe styles in your project
```html
<link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/leaflet/1.7.1/leaflet.min.css"/>
<link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/leaflet-scribe/1.0.4/leaflet.scribe.css"/>
```
or by including
```
node_modules/leaflet/dist/leaflet.css
node_modules/leaflet-scribe/dist/leaflet.scribe.css
```

You might need to add one more rule missing in the current css:
```css
  .sr-only {
    display: none;
  }
```

It's important to wrap EditControl component into FeatureGroup component from `react-leaflet`.
The elements you draw will be added to this FeatureGroup layer, when you hit edit button only items in this layer will be edited.

```jsx
import { Map, TileLayer, FeatureGroup, Circle } from 'react-leaflet';
import { EditControl } from "react-leaflet-scribe"

const Component = () => (
  <FeatureGroup>
    <EditControl
      position='topright'
      onEdited={this._onEditPath}
      onCreated={this._onCreate}
      onDeleted={this._onDeleted}
      draw={{
        rectangle: false
      }}
    />
    <Circle center={[51.51, -0.06]} radius={200} />
  </FeatureGroup>
);
```

For more details on how to use this plugin check out the examples [example](examples).
- `npm run example:class` to compile the class example
- `npm run example:hooks` to compile and run the hooks example

You can pass more options on draw object. For configuration details, check the [Leaflet Scribe documentation](https://github.com/yusufarsln98/leaflet-scribe).

## EditControl API

#### Props

|name            |type                        |description                                           |
|----------------|----------------------------|------------------------------------------------------|
|position        |string                      |control group position                                |
|draw            |object <DrawOptions>        |enable/disable draw controls                          |
|edit            |object <EditPolyOptions>    |enable/disable edit controls                          |
|onEdited        |function                    |hook to Leaflet Scribe's `draw:edited` event          |
|onCreated       |function                    |hook to Leaflet Scribe's `draw:created` event         |
|onDeleted       |function                    |hook to Leaflet Scribe's `draw:deleted` event         |
|onMounted       |function                    |hook to Leaflet Scribe's `draw:mounted` event         |
|onEditStart     |function                    |hook to Leaflet Scribe's `draw:editstart` event       |
|onEditStop      |function                    |hook to Leaflet Scribe's `draw:editstop` event        |
|onDeleteStart   |function                    |hook to Leaflet Scribe's `draw:deletestart` event     |
|onDeleteStop    |function                    |hook to Leaflet Scribe's `draw:deletestop` event      |
|onDrawStart     |function                    |hook to Leaflet Scribe's `draw:drawstart` event       |
|onDrawStop      |function                    |hook to Leaflet Scribe's `draw:drawstop` event        |
|onDrawVertex    |function                    |hook to Leaflet Scribe's `draw:drawvertex` event      |
|onEditMove      |function                    |hook to Leaflet Scribe's `draw:editmove` event        |
|onEditResize    |function                    |hook to Leaflet Scribe's `draw:editresize` event      |
|onEditVertex    |function                    |hook to Leaflet Scribe's `draw:editvertex` event      |

#### Links to docs

* [Control position options](http://leafletjs.com/reference.html#control-positions)
* [DrawOptions](https://github.com/yusufarsln98/leaflet-scribe#example-leaflet-scribe-config)
* [EditPolyOptions](https://github.com/yusufarsln98/leaflet-scribe#changing-a-drawing-handlers-options)
* [Draw events](https://github.com/yusufarsln98/leaflet-scribe)
