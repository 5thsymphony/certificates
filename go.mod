module github.com/smallstep/certificates

go 1.14

require (
	cloud.google.com/go v0.83.0
	github.com/Masterminds/sprig/v3 v3.1.0
	github.com/ThalesIgnite/crypto11 v1.2.4
	github.com/aws/aws-sdk-go v1.30.29
	github.com/go-chi/chi v4.0.2+incompatible
	github.com/go-kit/kit v0.10.0 // indirect
	github.com/go-piv/piv-go v1.7.0
	github.com/golang/mock v1.5.0
	github.com/google/uuid v1.1.2
	github.com/googleapis/gax-go/v2 v2.0.5
	github.com/konsorten/go-windows-terminal-sequences v1.0.2 // indirect
	github.com/mattn/go-colorable v0.1.8 // indirect
	github.com/mattn/go-isatty v0.0.13 // indirect
	github.com/micromdm/scep/v2 v2.0.0
	github.com/newrelic/go-agent v2.15.0+incompatible
	github.com/pkg/errors v0.9.1
	github.com/rs/xid v1.2.1
	github.com/sirupsen/logrus v1.4.2
	github.com/smallstep/assert v0.0.0-20200723003110-82e2b9b3b262
	github.com/smallstep/nosql v0.3.6
	github.com/stretchr/testify v1.7.0 // indirect
	github.com/urfave/cli v1.22.4
	go.mozilla.org/pkcs7 v0.0.0-20200128120323-432b2356ecb1
	go.step.sm/cli-utils v0.4.1
	go.step.sm/crypto v0.9.0
	go.step.sm/linkedca v0.0.0-20210611183751-27424aae8d25
	golang.org/x/crypto v0.0.0-20201016220609-9e8e0b390897
	golang.org/x/net v0.0.0-20210503060351-7fd8e65b6420
	google.golang.org/api v0.47.0
	google.golang.org/genproto v0.0.0-20210602131652-f16073e35f0c
	google.golang.org/grpc v1.38.0
	google.golang.org/protobuf v1.26.0
	gopkg.in/square/go-jose.v2 v2.5.1
)

//replace github.com/smallstep/nosql => ../nosql

//replace go.step.sm/crypto => ../crypto

replace go.step.sm/cli-utils => ../cli-utils

replace go.mozilla.org/pkcs7 v0.0.0-20200128120323-432b2356ecb1 => github.com/omorsi/pkcs7 v0.0.0-20210217142924-a7b80a2a8568
