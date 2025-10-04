package com.google.gson;

import com.google.errorprone.annotations.CanIgnoreReturnValue;
import com.google.gson.internal.Streams;
import com.google.gson.stream.JsonWriter;
import com.panda912.muddy.ObfuscatedString;
import java.io.IOException;
import java.io.StringWriter;
import java.math.BigDecimal;
import java.math.BigInteger;

/* loaded from: classes.dex */
public abstract class JsonElement {
    @Deprecated
    public JsonElement() {
    }

    public abstract JsonElement deepCopy();

    public BigDecimal getAsBigDecimal() {
        throw new UnsupportedOperationException(getClass().getSimpleName());
    }

    public BigInteger getAsBigInteger() {
        throw new UnsupportedOperationException(getClass().getSimpleName());
    }

    public boolean getAsBoolean() {
        throw new UnsupportedOperationException(getClass().getSimpleName());
    }

    public byte getAsByte() {
        throw new UnsupportedOperationException(getClass().getSimpleName());
    }

    @Deprecated
    public char getAsCharacter() {
        throw new UnsupportedOperationException(getClass().getSimpleName());
    }

    public double getAsDouble() {
        throw new UnsupportedOperationException(getClass().getSimpleName());
    }

    public float getAsFloat() {
        throw new UnsupportedOperationException(getClass().getSimpleName());
    }

    public int getAsInt() {
        throw new UnsupportedOperationException(getClass().getSimpleName());
    }

    public JsonArray getAsJsonArray() {
        if (isJsonArray()) {
            return (JsonArray) this;
        }
        throw new IllegalStateException(new ObfuscatedString(new long[]{-6477007315859268853L, 7746477482822605423L, -3312643684659656333L, 752815033114795186L}).toString() + this);
    }

    @CanIgnoreReturnValue
    public JsonNull getAsJsonNull() {
        if (isJsonNull()) {
            return (JsonNull) this;
        }
        throw new IllegalStateException(new ObfuscatedString(new long[]{-680869543893205042L, 5468604314554191430L, -4596776384372164046L, -4434427254388612027L}).toString() + this);
    }

    public JsonObject getAsJsonObject() {
        if (isJsonObject()) {
            return (JsonObject) this;
        }
        throw new IllegalStateException(new ObfuscatedString(new long[]{-7398734052645057404L, -4310968025476122504L, -7630524206353432374L, 7980747556261662326L}).toString() + this);
    }

    public JsonPrimitive getAsJsonPrimitive() {
        if (isJsonPrimitive()) {
            return (JsonPrimitive) this;
        }
        throw new IllegalStateException(new ObfuscatedString(new long[]{2315403038494635449L, 5297853565112146530L, -7112144418129937560L, -4791154640919266114L}).toString() + this);
    }

    public long getAsLong() {
        throw new UnsupportedOperationException(getClass().getSimpleName());
    }

    public Number getAsNumber() {
        throw new UnsupportedOperationException(getClass().getSimpleName());
    }

    public short getAsShort() {
        throw new UnsupportedOperationException(getClass().getSimpleName());
    }

    public String getAsString() {
        throw new UnsupportedOperationException(getClass().getSimpleName());
    }

    public boolean isJsonArray() {
        return this instanceof JsonArray;
    }

    public boolean isJsonNull() {
        return this instanceof JsonNull;
    }

    public boolean isJsonObject() {
        return this instanceof JsonObject;
    }

    public boolean isJsonPrimitive() {
        return this instanceof JsonPrimitive;
    }

    public String toString() {
        try {
            StringWriter stringWriter = new StringWriter();
            JsonWriter jsonWriter = new JsonWriter(stringWriter);
            jsonWriter.setStrictness(Strictness.LENIENT);
            Streams.write(this, jsonWriter);
            return stringWriter.toString();
        } catch (IOException e) {
            throw new AssertionError(e);
        }
    }
}
