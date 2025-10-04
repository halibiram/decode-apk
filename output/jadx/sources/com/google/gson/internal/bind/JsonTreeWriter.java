package com.google.gson.internal.bind;

import com.google.errorprone.annotations.CanIgnoreReturnValue;
import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonNull;
import com.google.gson.JsonObject;
import com.google.gson.JsonPrimitive;
import com.google.gson.stream.JsonWriter;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0362x4440ab85;
import j$.util.Objects;
import java.io.IOException;
import java.io.Writer;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes3.dex */
public final class JsonTreeWriter extends JsonWriter {
    private String pendingName;
    private JsonElement product;
    private final List<JsonElement> stack;
    private static final Writer UNWRITABLE_WRITER = new Writer() { // from class: com.google.gson.internal.bind.JsonTreeWriter.1
        @Override // java.io.Writer, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            throw new AssertionError();
        }

        @Override // java.io.Writer, java.io.Flushable
        public void flush() {
            throw new AssertionError();
        }

        @Override // java.io.Writer
        public void write(char[] cArr, int i, int i2) {
            throw new AssertionError();
        }
    };
    private static final JsonPrimitive SENTINEL_CLOSED = new JsonPrimitive(new ObfuscatedString(new long[]{-2645427427727752841L, -3543730000567491776L}).toString());

    public JsonTreeWriter() {
        super(UNWRITABLE_WRITER);
        this.stack = new ArrayList();
        this.product = JsonNull.INSTANCE;
    }

    private JsonElement peek() {
        return (JsonElement) AbstractC0362x4440ab85.m2928x75d576dc(1, this.stack);
    }

    private void put(JsonElement jsonElement) {
        if (this.pendingName != null) {
            if (!jsonElement.isJsonNull() || getSerializeNulls()) {
                ((JsonObject) peek()).add(this.pendingName, jsonElement);
            }
            this.pendingName = null;
            return;
        }
        if (this.stack.isEmpty()) {
            this.product = jsonElement;
            return;
        }
        JsonElement peek = peek();
        if (peek instanceof JsonArray) {
            ((JsonArray) peek).add(jsonElement);
            return;
        }
        throw new IllegalStateException();
    }

    @Override // com.google.gson.stream.JsonWriter
    @CanIgnoreReturnValue
    public JsonWriter beginArray() {
        JsonArray jsonArray = new JsonArray();
        put(jsonArray);
        this.stack.add(jsonArray);
        return this;
    }

    @Override // com.google.gson.stream.JsonWriter
    @CanIgnoreReturnValue
    public JsonWriter beginObject() {
        JsonObject jsonObject = new JsonObject();
        put(jsonObject);
        this.stack.add(jsonObject);
        return this;
    }

    @Override // com.google.gson.stream.JsonWriter, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        if (this.stack.isEmpty()) {
            this.stack.add(SENTINEL_CLOSED);
            return;
        }
        throw new IOException(new ObfuscatedString(new long[]{-2600339913582502797L, 5397958549102772419L, -2345026126634484269L, 5044427477823466358L}).toString());
    }

    @Override // com.google.gson.stream.JsonWriter
    @CanIgnoreReturnValue
    public JsonWriter endArray() {
        if (!this.stack.isEmpty() && this.pendingName == null) {
            if (peek() instanceof JsonArray) {
                this.stack.remove(r0.size() - 1);
                return this;
            }
            throw new IllegalStateException();
        }
        throw new IllegalStateException();
    }

    @Override // com.google.gson.stream.JsonWriter
    @CanIgnoreReturnValue
    public JsonWriter endObject() {
        if (!this.stack.isEmpty() && this.pendingName == null) {
            if (peek() instanceof JsonObject) {
                this.stack.remove(r0.size() - 1);
                return this;
            }
            throw new IllegalStateException();
        }
        throw new IllegalStateException();
    }

    @Override // com.google.gson.stream.JsonWriter, java.io.Flushable
    public void flush() {
    }

    public JsonElement get() {
        if (this.stack.isEmpty()) {
            return this.product;
        }
        throw new IllegalStateException(new ObfuscatedString(new long[]{7687983067993951635L, 7206941854015832178L, 4536855390380903598L, -5523938662742976667L, -4686817295390540584L, -2642516103503171094L}).toString() + this.stack);
    }

    @Override // com.google.gson.stream.JsonWriter
    public JsonWriter jsonValue(String str) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.gson.stream.JsonWriter
    @CanIgnoreReturnValue
    public JsonWriter name(String str) {
        Objects.requireNonNull(str, new ObfuscatedString(new long[]{-5429086874754729830L, -491126443351603565L, 942777401427624253L}).toString());
        if (!this.stack.isEmpty() && this.pendingName == null) {
            if (peek() instanceof JsonObject) {
                this.pendingName = str;
                return this;
            }
            throw new IllegalStateException(new ObfuscatedString(new long[]{4725966106590649585L, 195976315475485849L, 2789563414851299949L, 2580643798846431617L, -7245937528969849884L, 3033060513305572093L, -8453108037017913350L}).toString());
        }
        throw new IllegalStateException(new ObfuscatedString(new long[]{-6027806247714403794L, -6138115052878430095L, 7964119329187684082L, 125616679543638512L}).toString());
    }

    @Override // com.google.gson.stream.JsonWriter
    @CanIgnoreReturnValue
    public JsonWriter nullValue() {
        put(JsonNull.INSTANCE);
        return this;
    }

    @Override // com.google.gson.stream.JsonWriter
    @CanIgnoreReturnValue
    public JsonWriter value(String str) {
        if (str == null) {
            return nullValue();
        }
        put(new JsonPrimitive(str));
        return this;
    }

    @Override // com.google.gson.stream.JsonWriter
    @CanIgnoreReturnValue
    public JsonWriter value(boolean z) {
        put(new JsonPrimitive(Boolean.valueOf(z)));
        return this;
    }

    @Override // com.google.gson.stream.JsonWriter
    @CanIgnoreReturnValue
    public JsonWriter value(Boolean bool) {
        if (bool == null) {
            return nullValue();
        }
        put(new JsonPrimitive(bool));
        return this;
    }

    @Override // com.google.gson.stream.JsonWriter
    @CanIgnoreReturnValue
    public JsonWriter value(float f) {
        if (!isLenient() && (Float.isNaN(f) || Float.isInfinite(f))) {
            throw new IllegalArgumentException(new ObfuscatedString(new long[]{380875185855673994L, 8416552638034578498L, 7077615463480143690L, 461457360528739829L, 5342927692434783453L, -4312407937770980124L}).toString() + f);
        }
        put(new JsonPrimitive(Float.valueOf(f)));
        return this;
    }

    @Override // com.google.gson.stream.JsonWriter
    @CanIgnoreReturnValue
    public JsonWriter value(double d) {
        if (!isLenient() && (Double.isNaN(d) || Double.isInfinite(d))) {
            throw new IllegalArgumentException(new ObfuscatedString(new long[]{5183323790365346614L, 4949060513641344274L, -753718656940575072L, -8735247457047525553L, 1780977938490045180L, 6627138573546848014L}).toString() + d);
        }
        put(new JsonPrimitive(Double.valueOf(d)));
        return this;
    }

    @Override // com.google.gson.stream.JsonWriter
    @CanIgnoreReturnValue
    public JsonWriter value(long j) {
        put(new JsonPrimitive(Long.valueOf(j)));
        return this;
    }

    @Override // com.google.gson.stream.JsonWriter
    @CanIgnoreReturnValue
    public JsonWriter value(Number number) {
        if (number == null) {
            return nullValue();
        }
        if (!isLenient()) {
            double doubleValue = number.doubleValue();
            if (Double.isNaN(doubleValue) || Double.isInfinite(doubleValue)) {
                throw new IllegalArgumentException(new ObfuscatedString(new long[]{6884855957685551048L, -7905101324652658091L, 8496833394031108489L, -6501442967944191525L, 2302816163866694236L, 956382653086455156L}).toString() + number);
            }
        }
        put(new JsonPrimitive(number));
        return this;
    }
}
