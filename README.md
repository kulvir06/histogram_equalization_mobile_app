# Histogram_Equalization

A Flutter Project to calculate and display the Histogram Equalization Levels of given Gray Levels and its Frequencies
<<<<<<< HEAD
=======

## Histogram Equalization - an integral part of Image Processing

Histogram equalization is a method in image processing of contrast adjustment using the image's histogram.

This method usually increases the global contrast of many images, especially when the image is represented by a narrow range of intensity values.
Through this adjustment, the intensities can be better distributed on the histogram utilizing the full range of intensities evenly.
This allows for areas of lower local contrast to gain a higher contrast. 
Histogram equalization accomplishes this by effectively spreading out the highly populated intensity values which use to degrade image contrast.

<img align="left" alt="Histogram"  src="https://upload.wikimedia.org/wikipedia/commons/thumb/c/ca/Histogrammeinebnung.png/450px-Histogrammeinebnung.png" />
<br/> <br/>

## Implementation of Histogram Equaliztion

Consider a discrete grayscale image {x} and let ni be the number of occurrences of gray level i. 
The probability of an occurrence of a pixel of level i in the image is

<img align="left" alt="nodejs" src="https://wikimedia.org/api/rest_v1/media/math/render/svg/2085ca8d9ae45213103bff0b9c786ca717e55bba" />
<br/>
L being the total number of gray levels in the image (typically 256), n being the total number of pixels in the image, 
and p_{x}(i) being in fact the image's histogram for pixel value i, normalized to [0,1].
<br/>
Let us also define the cumulative distribution function corresponding to i as
<img align="left" alt="nodejs" src="https://wikimedia.org/api/rest_v1/media/math/render/svg/f11f4672c6dbd582515ce0581788ac9b873e17e5" />
<br/>
which is also the image's accumulated normalized histogram.
We would like to create a transformation of the form y=T(x) to produce a new image {y}, with a flat histogram. 
Such an image would have a linearized cumulative distribution function (CDF) across the value range, i.e.
<img align="left" alt="nodejs" src="https://wikimedia.org/api/rest_v1/media/math/render/svg/f356b5565f52a91358b496f6ab1cb21e389f4ddd" />
<br/>
for some constant K. The properties of the CDF allow us to perform such a transform; it is defined as
<img align="left" alt="nodejs" src="https://wikimedia.org/api/rest_v1/media/math/render/svg/57b9277fa5b9b68f953c4973e494062d44bbe8ee" />
<br/>
where K is in the range [0,L-1]. 
Notice that T maps the levels into the range [0,1], since we used a normalized histogram of {x}. 
In order to map the values back into their original range, the following simple transformation needs to be applied on the result:
<img align="left" alt="nodejs" src="https://wikimedia.org/api/rest_v1/media/math/render/svg/a508afa5424e31b8133c7d993be90e3f4df5234d" />
<br/>
y is a real value while y' has to be an integer. An intuitive and popular method is applying the round operation:
<img align="left" alt="nodejs" src="https://wikimedia.org/api/rest_v1/media/math/render/svg/f63003a93dd32519f3b65f4b77deaf771d40e11a" />
<br/>
This will result in the final histogram equalization levels
>>>>>>> a6c059e324c89902a5b3b472653c08b2ee7fcc37

[Download APK](https://github.com/kulvir06/histogram_equalization_mobile_app/raw/master/build/app-release.apk)

 ... I have also created a web app for the same. [Do feel free to check it out](https://fathomless-crag-64256.herokuapp.com/)

## Histogram Equalization - an integral part of Image Processing

Histogram equalization is a method in image processing of contrast adjustment using the image's histogram.

This method usually increases the global contrast of many images, especially when the image is represented by a narrow range of intensity values.
Through this adjustment, the intensities can be better distributed on the histogram utilizing the full range of intensities evenly.
This allows for areas of lower local contrast to gain a higher contrast. 
Histogram equalization accomplishes this by effectively spreading out the highly populated intensity values which use to degrade image contrast.

<img align="left" alt="Histogram" height="150" src="https://upload.wikimedia.org/wikipedia/commons/thumb/c/ca/Histogrammeinebnung.png/450px-Histogrammeinebnung.png" /> <br/>

<br/><br/><br/>

## <br/><br/>Implementation of Histogram Equaliztion

Consider a discrete grayscale image {x} and let ni be the number of occurrences of gray level i. 
The probability of an occurrence of a pixel of level i in the image is

<img align="left" alt="nodejs" src="https://wikimedia.org/api/rest_v1/media/math/render/svg/2085ca8d9ae45213103bff0b9c786ca717e55bba" /> <br/>

<br/>

L being the total number of gray levels in the image (typically 256), n being the total number of pixels in the image, 
and p_{x}(i) being in fact the image's histogram for pixel value i, normalized to [0,1].

Let us also define the cumulative distribution function corresponding to i as

<img align="left" alt="nodejs" src="https://wikimedia.org/api/rest_v1/media/math/render/svg/f11f4672c6dbd582515ce0581788ac9b873e17e5" /> <br/>

<br/>

<br/>which is also the image's accumulated normalized histogram.
We would like to create a transformation of the form y=T(x) to produce a new image {y}, with a flat histogram. 
Such an image would have a linearized cumulative distribution function (CDF) across the value range, i.e.

<img align="left" alt="nodejs" src="https://wikimedia.org/api/rest_v1/media/math/render/svg/f356b5565f52a91358b496f6ab1cb21e389f4ddd" />

<br/>

<br/>for some constant K. The properties of the CDF allow us to perform such a transform; it is defined as

<img align="left" alt="nodejs" src="https://wikimedia.org/api/rest_v1/media/math/render/svg/57b9277fa5b9b68f953c4973e494062d44bbe8ee" />
<br/>

<br/>where K is in the range [0,L-1]. 
Notice that T maps the levels into the range [0,1], since we used a normalized histogram of {x}. 
In order to map the values back into their original range, the following simple transformation needs to be applied on the result:

<img align="left" alt="nodejs" src="https://wikimedia.org/api/rest_v1/media/math/render/svg/a508afa5424e31b8133c7d993be90e3f4df5234d" />
<br/>

<br/>y is a real value while y' has to be an integer. An intuitive and popular method is applying the round operation:

<img align="left" alt="nodejs" src="https://wikimedia.org/api/rest_v1/media/math/render/svg/f63003a93dd32519f3b65f4b77deaf771d40e11a" />

<br/>

<br/>This will result in the final histogram equalization levels

## Getting Started with Flutter

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.


