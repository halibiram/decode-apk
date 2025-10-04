package com.google.gson;

import com.google.gson.internal.LazilyParsedNumber;
import com.google.gson.internal.NumberLimits;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.MalformedJsonException;
import com.panda912.muddy.ObfuscatedString;
import java.math.BigDecimal;

/* loaded from: classes.dex */
public enum ToNumberPolicy implements ToNumberStrategy {
    DOUBLE { // from class: com.google.gson.ToNumberPolicy.1
        @Override // com.google.gson.ToNumberStrategy
        public Double readNumber(JsonReader jsonReader) {
            return Double.valueOf(jsonReader.nextDouble());
        }
    },
    LAZILY_PARSED_NUMBER { // from class: com.google.gson.ToNumberPolicy.2
        @Override // com.google.gson.ToNumberStrategy
        public Number readNumber(JsonReader jsonReader) {
            return new LazilyParsedNumber(jsonReader.nextString());
        }
    },
    LONG_OR_DOUBLE { // from class: com.google.gson.ToNumberPolicy.3
        private Number parseAsDouble(String str, JsonReader jsonReader) {
            try {
                Double valueOf = Double.valueOf(str);
                if (!valueOf.isInfinite()) {
                    if (valueOf.isNaN()) {
                    }
                    return valueOf;
                }
                if (!jsonReader.isLenient()) {
                    throw new MalformedJsonException(new ObfuscatedString(new long[]{4814193352619845427L, -4233435095164089991L, 4982297106391295007L, -3580547917228792222L, 1560013420974385504L, -5228278362400107579L}).toString() + valueOf + new ObfuscatedString(new long[]{5873871680075258514L, -6489472609140143741L, -2521783989961327545L}).toString() + jsonReader.getPreviousPath());
                }
                return valueOf;
            } catch (NumberFormatException e) {
                throw new JsonParseException(new ObfuscatedString(new long[]{3726553334547510190L, -5524274463466971981L, 8499103638304784179L}).toString() + str + new ObfuscatedString(new long[]{7391927514157678936L, -2747480195022815395L, -1974943809154494058L}).toString() + jsonReader.getPreviousPath(), e);
            }
        }

        @Override // com.google.gson.ToNumberStrategy
        public Number readNumber(JsonReader jsonReader) {
            String nextString = jsonReader.nextString();
            if (nextString.indexOf(46) >= 0) {
                return parseAsDouble(nextString, jsonReader);
            }
            try {
                return Long.valueOf(Long.parseLong(nextString));
            } catch (NumberFormatException unused) {
                return parseAsDouble(nextString, jsonReader);
            }
        }
    },
    BIG_DECIMAL { // from class: com.google.gson.ToNumberPolicy.4
        @Override // com.google.gson.ToNumberStrategy
        public BigDecimal readNumber(JsonReader jsonReader) {
            String nextString = jsonReader.nextString();
            try {
                return NumberLimits.parseBigDecimal(nextString);
            } catch (NumberFormatException e) {
                throw new JsonParseException(new ObfuscatedString(new long[]{1323853778148880101L, -2071245891408592859L, -554284196070838374L}).toString() + nextString + new ObfuscatedString(new long[]{3691472581511727675L, -4106211243940291197L, -5366507399592527584L}).toString() + jsonReader.getPreviousPath(), e);
            }
        }
    }
}
