//
//  ImageArray.swift
//  temp
//
//  Created by Thinkwik 27 on 09/06/23.
//

import Foundation


var arrImg = ["https://images.pexels.com/photos/15620103/pexels-photo-15620103/free-photo-of-silhouette-of-person-standing-by-lakeshore.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
              "https://images.pexels.com/photos/14902208/pexels-photo-14902208.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
              "https://images.pexels.com/photos/16661846/pexels-photo-16661846/free-photo-of-city-art-street-building.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
              "https://images.pexels.com/photos/11795379/pexels-photo-11795379.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
              "https://images.pexels.com/photos/6630588/pexels-photo-6630588.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
              "https://images.pexels.com/photos/9241633/pexels-photo-9241633.jpeg?auto=compress&cs=tinysrgb&w=800&lazy=load",
              "https://images.pexels.com/photos/13516467/pexels-photo-13516467.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
              "https://images.pexels.com/photos/4062676/pexels-photo-4062676.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
              "https://images.pexels.com/photos/1813394/pexels-photo-1813394.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
              "https://images.pexels.com/photos/12225910/pexels-photo-12225910.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
              "https://images.pexels.com/photos/16144098/pexels-photo-16144098/free-photo-of-pastel-colored-buildings-under-cloudy-sky.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
              "https://images.pexels.com/photos/15620103/pexels-photo-15620103/free-photo-of-silhouette-of-person-standing-by-lakeshore.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
              "https://images.pexels.com/photos/14902208/pexels-photo-14902208.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
              "https://images.pexels.com/photos/16661846/pexels-photo-16661846/free-photo-of-city-art-street-building.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
              "https://images.pexels.com/photos/11795379/pexels-photo-11795379.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
              "https://images.pexels.com/photos/6630588/pexels-photo-6630588.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
              "https://images.pexels.com/photos/9241633/pexels-photo-9241633.jpeg?auto=compress&cs=tinysrgb&w=800&lazy=load",
              "https://images.pexels.com/photos/13516467/pexels-photo-13516467.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
              "https://images.pexels.com/photos/4062676/pexels-photo-4062676.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
              "https://images.pexels.com/photos/1813394/pexels-photo-1813394.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
              "https://images.pexels.com/photos/12225910/pexels-photo-12225910.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
              "https://images.pexels.com/photos/16144098/pexels-photo-16144098/free-photo-of-pastel-colored-buildings-under-cloudy-sky.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
              "https://images.pexels.com/photos/15620103/pexels-photo-15620103/free-photo-of-silhouette-of-person-standing-by-lakeshore.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
              "https://images.pexels.com/photos/14902208/pexels-photo-14902208.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
              "https://images.pexels.com/photos/16661846/pexels-photo-16661846/free-photo-of-city-art-street-building.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
              "https://images.pexels.com/photos/11795379/pexels-photo-11795379.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
              "https://images.pexels.com/photos/6630588/pexels-photo-6630588.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
              "https://images.pexels.com/photos/9241633/pexels-photo-9241633.jpeg?auto=compress&cs=tinysrgb&w=800&lazy=load",
              "https://images.pexels.com/photos/13516467/pexels-photo-13516467.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
              "https://images.pexels.com/photos/4062676/pexels-photo-4062676.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
              "https://images.pexels.com/photos/1813394/pexels-photo-1813394.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
              "https://images.pexels.com/photos/12225910/pexels-photo-12225910.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
              "https://images.pexels.com/photos/16144098/pexels-photo-16144098/free-photo-of-pastel-colored-buildings-under-cloudy-sky.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
              "https://images.pexels.com/photos/15620103/pexels-photo-15620103/free-photo-of-silhouette-of-person-standing-by-lakeshore.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
              "https://images.pexels.com/photos/14902208/pexels-photo-14902208.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
              "https://images.pexels.com/photos/16661846/pexels-photo-16661846/free-photo-of-city-art-street-building.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
              "https://images.pexels.com/photos/11795379/pexels-photo-11795379.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
              "https://images.pexels.com/photos/6630588/pexels-photo-6630588.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
              "https://images.pexels.com/photos/9241633/pexels-photo-9241633.jpeg?auto=compress&cs=tinysrgb&w=800&lazy=load",
              "https://images.pexels.com/photos/13516467/pexels-photo-13516467.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
              "https://images.pexels.com/photos/4062676/pexels-photo-4062676.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
              "https://images.pexels.com/photos/1813394/pexels-photo-1813394.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
              "https://images.pexels.com/photos/12225910/pexels-photo-12225910.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
              "https://images.pexels.com/photos/16144098/pexels-photo-16144098/free-photo-of-pastel-colored-buildings-under-cloudy-sky.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
              "https://images.pexels.com/photos/15620103/pexels-photo-15620103/free-photo-of-silhouette-of-person-standing-by-lakeshore.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
              "https://images.pexels.com/photos/14902208/pexels-photo-14902208.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
              "https://images.pexels.com/photos/16661846/pexels-photo-16661846/free-photo-of-city-art-street-building.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
              "https://images.pexels.com/photos/11795379/pexels-photo-11795379.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
              "https://images.pexels.com/photos/6630588/pexels-photo-6630588.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
              "https://images.pexels.com/photos/9241633/pexels-photo-9241633.jpeg?auto=compress&cs=tinysrgb&w=800&lazy=load",
              "https://images.pexels.com/photos/13516467/pexels-photo-13516467.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
              "https://images.pexels.com/photos/4062676/pexels-photo-4062676.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
              "https://images.pexels.com/photos/1813394/pexels-photo-1813394.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
              "https://images.pexels.com/photos/12225910/pexels-photo-12225910.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
              "https://images.pexels.com/photos/16144098/pexels-photo-16144098/free-photo-of-pastel-colored-buildings-under-cloudy-sky.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
              "https://images.pexels.com/photos/15620103/pexels-photo-15620103/free-photo-of-silhouette-of-person-standing-by-lakeshore.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
              "https://images.pexels.com/photos/14902208/pexels-photo-14902208.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
              "https://images.pexels.com/photos/16661846/pexels-photo-16661846/free-photo-of-city-art-street-building.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
              "https://images.pexels.com/photos/11795379/pexels-photo-11795379.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
              "https://images.pexels.com/photos/6630588/pexels-photo-6630588.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
              "https://images.pexels.com/photos/9241633/pexels-photo-9241633.jpeg?auto=compress&cs=tinysrgb&w=800&lazy=load",
              "https://images.pexels.com/photos/13516467/pexels-photo-13516467.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
              "https://images.pexels.com/photos/4062676/pexels-photo-4062676.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
              "https://images.pexels.com/photos/1813394/pexels-photo-1813394.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
              "https://images.pexels.com/photos/12225910/pexels-photo-12225910.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
              "https://images.pexels.com/photos/16144098/pexels-photo-16144098/free-photo-of-pastel-colored-buildings-under-cloudy-sky.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
              "https://images.pexels.com/photos/15620103/pexels-photo-15620103/free-photo-of-silhouette-of-person-standing-by-lakeshore.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
              "https://images.pexels.com/photos/14902208/pexels-photo-14902208.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
              "https://images.pexels.com/photos/16661846/pexels-photo-16661846/free-photo-of-city-art-street-building.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
              "https://images.pexels.com/photos/11795379/pexels-photo-11795379.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
              "https://images.pexels.com/photos/6630588/pexels-photo-6630588.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
              "https://images.pexels.com/photos/9241633/pexels-photo-9241633.jpeg?auto=compress&cs=tinysrgb&w=800&lazy=load",
              "https://images.pexels.com/photos/13516467/pexels-photo-13516467.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
              "https://images.pexels.com/photos/4062676/pexels-photo-4062676.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
              "https://images.pexels.com/photos/1813394/pexels-photo-1813394.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
              "https://images.pexels.com/photos/12225910/pexels-photo-12225910.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
              "https://images.pexels.com/photos/16144098/pexels-photo-16144098/free-photo-of-pastel-colored-buildings-under-cloudy-sky.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
              "https://images.pexels.com/photos/15620103/pexels-photo-15620103/free-photo-of-silhouette-of-person-standing-by-lakeshore.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
              "https://images.pexels.com/photos/14902208/pexels-photo-14902208.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
              "https://images.pexels.com/photos/16661846/pexels-photo-16661846/free-photo-of-city-art-street-building.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
              "https://images.pexels.com/photos/11795379/pexels-photo-11795379.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
              "https://images.pexels.com/photos/6630588/pexels-photo-6630588.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
              "https://images.pexels.com/photos/9241633/pexels-photo-9241633.jpeg?auto=compress&cs=tinysrgb&w=800&lazy=load",
              "https://images.pexels.com/photos/13516467/pexels-photo-13516467.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
              "https://images.pexels.com/photos/4062676/pexels-photo-4062676.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
              "https://images.pexels.com/photos/1813394/pexels-photo-1813394.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
              "https://images.pexels.com/photos/12225910/pexels-photo-12225910.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
              "https://images.pexels.com/photos/16144098/pexels-photo-16144098/free-photo-of-pastel-colored-buildings-under-cloudy-sky.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
              "https://images.pexels.com/photos/15620103/pexels-photo-15620103/free-photo-of-silhouette-of-person-standing-by-lakeshore.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
              "https://images.pexels.com/photos/14902208/pexels-photo-14902208.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
              "https://images.pexels.com/photos/16661846/pexels-photo-16661846/free-photo-of-city-art-street-building.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
              "https://images.pexels.com/photos/11795379/pexels-photo-11795379.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
              "https://images.pexels.com/photos/6630588/pexels-photo-6630588.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
              "https://images.pexels.com/photos/9241633/pexels-photo-9241633.jpeg?auto=compress&cs=tinysrgb&w=800&lazy=load",
              "https://images.pexels.com/photos/13516467/pexels-photo-13516467.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
              "https://images.pexels.com/photos/4062676/pexels-photo-4062676.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
              "https://images.pexels.com/photos/1813394/pexels-photo-1813394.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
              "https://images.pexels.com/photos/12225910/pexels-photo-12225910.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
              "https://images.pexels.com/photos/16144098/pexels-photo-16144098/free-photo-of-pastel-colored-buildings-under-cloudy-sky.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
              "https://images.pexels.com/photos/15620103/pexels-photo-15620103/free-photo-of-silhouette-of-person-standing-by-lakeshore.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
              "https://images.pexels.com/photos/14902208/pexels-photo-14902208.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
              "https://images.pexels.com/photos/16661846/pexels-photo-16661846/free-photo-of-city-art-street-building.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
              "https://images.pexels.com/photos/11795379/pexels-photo-11795379.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
              "https://images.pexels.com/photos/6630588/pexels-photo-6630588.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
              "https://images.pexels.com/photos/9241633/pexels-photo-9241633.jpeg?auto=compress&cs=tinysrgb&w=800&lazy=load",
              "https://images.pexels.com/photos/13516467/pexels-photo-13516467.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
              "https://images.pexels.com/photos/4062676/pexels-photo-4062676.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
              "https://images.pexels.com/photos/1813394/pexels-photo-1813394.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
              "https://images.pexels.com/photos/12225910/pexels-photo-12225910.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
              "https://images.pexels.com/photos/16144098/pexels-photo-16144098/free-photo-of-pastel-colored-buildings-under-cloudy-sky.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
              "https://images.pexels.com/photos/15620103/pexels-photo-15620103/free-photo-of-silhouette-of-person-standing-by-lakeshore.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
              "https://images.pexels.com/photos/14902208/pexels-photo-14902208.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
              "https://images.pexels.com/photos/16661846/pexels-photo-16661846/free-photo-of-city-art-street-building.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
              "https://images.pexels.com/photos/11795379/pexels-photo-11795379.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
              "https://images.pexels.com/photos/6630588/pexels-photo-6630588.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
              "https://images.pexels.com/photos/9241633/pexels-photo-9241633.jpeg?auto=compress&cs=tinysrgb&w=800&lazy=load",
              "https://images.pexels.com/photos/13516467/pexels-photo-13516467.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
              "https://images.pexels.com/photos/4062676/pexels-photo-4062676.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
              "https://images.pexels.com/photos/1813394/pexels-photo-1813394.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
              "https://images.pexels.com/photos/12225910/pexels-photo-12225910.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
              "https://images.pexels.com/photos/16144098/pexels-photo-16144098/free-photo-of-pastel-colored-buildings-under-cloudy-sky.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
              "https://images.pexels.com/photos/15620103/pexels-photo-15620103/free-photo-of-silhouette-of-person-standing-by-lakeshore.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
              "https://images.pexels.com/photos/14902208/pexels-photo-14902208.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
              "https://images.pexels.com/photos/16661846/pexels-photo-16661846/free-photo-of-city-art-street-building.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
              "https://images.pexels.com/photos/11795379/pexels-photo-11795379.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
              "https://images.pexels.com/photos/6630588/pexels-photo-6630588.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
              "https://images.pexels.com/photos/9241633/pexels-photo-9241633.jpeg?auto=compress&cs=tinysrgb&w=800&lazy=load",
              "https://images.pexels.com/photos/13516467/pexels-photo-13516467.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
              "https://images.pexels.com/photos/4062676/pexels-photo-4062676.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
              "https://images.pexels.com/photos/1813394/pexels-photo-1813394.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
              "https://images.pexels.com/photos/12225910/pexels-photo-12225910.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
              "https://images.pexels.com/photos/16144098/pexels-photo-16144098/free-photo-of-pastel-colored-buildings-under-cloudy-sky.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2"
]
