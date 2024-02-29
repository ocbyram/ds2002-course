import boto3
import urllib.request

urllib.request.urlretrieve('https://hips.hearstapps.com/ghk.h-cdn.co/assets/16/08/gettyimages-530330473.jpg?crop=0.659xw:0.990xh;0.123xw,0.00779xh&resize=980:*', 'anotherdog.png')

s3 = boto3.client('s3',region_name='us-east-1')

bucket = 'ds2002-ocb3wv'
local_file = 'anotherdog.png'

resp = s3.put_object(
    Body = local_file,
    Bucket = bucket,
    Key = local_file
)

expires_in = 604800

response = s3.generate_presigned_url(
    'get_object',
    Params={'Bucket': bucket, 'Key': local_file},
    ExpiresIn=expires_in
    )

print(response)

#Generated URL
https://ds2002-ocb3wv.s3.amazonaws.com/anotherdog.png?AWSAccessKeyId=ASIA4MTWGWYBTHECW3FD&Signature=579QjYO7yE4ZNzMzwf3aY67%2F7Ow%3D&x-amz-security-token=FwoGZXIvYXdzEDMaDFV7E0RDpOXmNHUIFyLEAd%2ByymK5gPYg4sFSuuVbs%2BYYD81lDvfPRM0r%2F5J9rt3tpJPeeTZdXODEHj8EjT4tvELpAuEjQ08cWEpQu2PuJlm644UzHyuFowBKE8UmUdgDZzFwWvgeLIgnv1AHGN0MJy5j1a68kPcCnKalVGCprtFTZeWx8HgvNJ18mImrVPB0mu36XQhilDeld3PwBVx68enh%2FYH6tdN9bpY6CfpC5bEAsQpo8B0W35YwnOer8vnMTDcoNbsqkryP3rU8IIMNvX8iQvEo1PiCrwYyLQEtvwwNXBJPD2FdUWSocZOq73JtjhDqwn7biE5gMPtKeyMZJKk5PmRDGAUSEQ%3D%3D&Expires=1709838189

