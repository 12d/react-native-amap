/**
 * @author xuweichen@meitu.io
 * @date 2017/6/21
 */
import React, { Component } from 'react';
import PropTypes from 'prop-types';
import {
    View,
    Text,
    requireNativeComponent
} from 'react-native';




class MapUrlTile extends Component {
    render() {
        return (
            <AMapUrlTile
                {...this.props}
            />
        );
    }
    static propTypes = {
        ...View.propTypes,

        /**
         * The url template of the tile server. The patterns {x} {y} {z} will be replaced at runtime
         * For example, http://c.tile.openstreetmap.org/{z}/{x}/{y}.png
         */
        urlTemplate: PropTypes.string.isRequired
    }
}
var AMapUrlTile = requireNativeComponent('AMapUrlTile', MapUrlTile, {
    nativeOnly: {
        urlTemplate: true
    },
});

export default MapUrlTile


