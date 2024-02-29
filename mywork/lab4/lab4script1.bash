#!/bin/bash


#Script
curl https://www.princeton.edu/sites/default/files/styles/1x_full_2x_half_crop/public/images/2022/02/KOA_Nassau_2697x1517.jpg?itok=Bg2K7j7J > puppy.png

aws s3 cp puppy.png s3://ds2002-ocb3wv/

aws s3 presign --expires-in 604800  s3://ds2002-ocb3wv/puppy.png

#Generated Link
https://ds2002-ocb3wv.s3.amazonaws.com/puppy.png?AWSAccessKeyId=ASIA4MTWGWYBTHECW3FD&Signature=%2Fta0xg4jbdfIxgl9w1YJlO8H0TE%3D&x-amz-security-token=FwoGZXIvYXdzEDMaDFV7E0RDpOXmNHUIFyLEAd%2ByymK5gPYg4sFSuuVbs%2BYYD81lDvfPRM0r%2F5J9rt3tpJPeeTZdXODEHj8EjT4tvELpAuEjQ08cWEpQu2PuJlm644UzHyuFowBKE8UmUdgDZzFwWvgeLIgnv1AHGN0MJy5j1a68kPcCnKalVGCprtFTZeWx8HgvNJ18mImrVPB0mu36XQhilDeld3PwBVx68enh%2FYH6tdN9bpY6CfpC5bEAsQpo8B0W35YwnOer8vnMTDcoNbsqkryP3rU8IIMNvX8iQvEo1PiCrwYyLQEtvwwNXBJPD2FdUWSocZOq73JtjhDqwn7biE5gMPtKeyMZJKk5PmRDGAUSEQ%3D%3D&Expires=1709833929
