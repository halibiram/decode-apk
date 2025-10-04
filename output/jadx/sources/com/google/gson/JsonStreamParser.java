package com.google.gson;

import com.google.gson.internal.Streams;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.MalformedJsonException;
import com.panda912.muddy.ObfuscatedString;
import java.io.IOException;
import java.io.Reader;
import java.io.StringReader;
import java.util.Iterator;
import java.util.NoSuchElementException;

/* loaded from: classes.dex */
public final class JsonStreamParser implements Iterator<JsonElement> {
    private final Object lock;
    private final JsonReader parser;

    public JsonStreamParser(String str) {
        this(new StringReader(str));
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        boolean z;
        synchronized (this.lock) {
            try {
                try {
                    try {
                        if (this.parser.peek() != JsonToken.END_DOCUMENT) {
                            z = true;
                        } else {
                            z = false;
                        }
                    } catch (IOException e) {
                        throw new JsonIOException(e);
                    }
                } catch (MalformedJsonException e2) {
                    throw new JsonSyntaxException(e2);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return z;
    }

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException();
    }

    public JsonStreamParser(Reader reader) {
        JsonReader jsonReader = new JsonReader(reader);
        this.parser = jsonReader;
        jsonReader.setStrictness(Strictness.LENIENT);
        this.lock = new Object();
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // java.util.Iterator
    public JsonElement next() {
        if (hasNext()) {
            try {
                return Streams.parse(this.parser);
            } catch (OutOfMemoryError e) {
                throw new JsonParseException(new ObfuscatedString(new long[]{4059446270261702540L, 8537962398270904187L, 8369913728904261318L, -8681206384233524230L, -4758014859777221344L, 8297603900960159908L}).toString(), e);
            } catch (StackOverflowError e2) {
                throw new JsonParseException(new ObfuscatedString(new long[]{2293310841959053726L, -7278005203153942631L, -2529065303191274106L, 150013362378542996L, 4331137631325831884L, -8262088089493723684L}).toString(), e2);
            }
        }
        throw new NoSuchElementException();
    }
}
