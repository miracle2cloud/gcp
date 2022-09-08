FROM alpine
LABEL description="This is test image to demonstate label"
LABEL owner="Surya"
LABEL version="no version applicable"
LABEL age="31"

ENV app_env="production"
ENV path_to_app="/bin/app"

ARG arg_name

RUN mkdir ${arg_name}
COPY file /${arg_name}/