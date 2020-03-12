#! /bin/bash

CHECKTYPE=""
COMMAND=""
case $INPUT_CHECKTYPE in

  ladybug | tracy | zend | doctrine | symfony | laravel)
    CHECK_TYPE=$INPUT_CHECK_TYPE
    ;;

  *)
    CHECKTYPE=""
    ;;
esac

if [ "$INPUT_EXCLUDE" = "" ]; then
    echo "No folder will be excluded."
    EXCLUDE=""
else
    EXCLUDE_DELIMETER_OLD=","
    EXCLUDE_DELIMETER_NEW=" --exclude "
    EXCLUDE="${INPUT_EXCLUDE//$EXCLUDE_DELIMETER_OLD/$EXCLUDE_DELIMETER_NEW}";
    EXCLUDE="$EXCLUDE_DELIMETER_NEW$EXCLUDE"
fi

if [ "$CHECKTYPE" = "" ]; then
    COMMAND="var-dump-check --no-colors $EXCLUDE --extensions $INPUT_EXTENSIONS ."
else
    COMMAND="var-dump-check --no-colors --$CHECKTYPE $EXCLUDE --extensions $INPUT_EXTENSIONS ."
fi

echo "$COMMAND"