package com.hospital.commonClasses;

public enum Gender {
    MALE( 'M' ),
    FEMALE( 'F' );

    private final char code;

    Gender(char code) {
        this.code = code;
    }

    public Gender fromCode(char code) {
        if ( code == 'M' || code == 'm' ) {
            return MALE;
        }
        if ( code == 'F' || code == 'f' ) {
            return FEMALE;
        }
        throw new UnsupportedOperationException(
                "The code " + code + " is not supported!"
        );
    }

    public char getCode() {
        return code;
    }
}
