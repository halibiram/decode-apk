package com.google.gson;

import com.google.errorprone.annotations.InlineMe;
import com.google.gson.internal.Streams;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.MalformedJsonException;
import com.panda912.muddy.ObfuscatedString;
import java.io.IOException;
import java.io.Reader;
import java.io.StringReader;

/* loaded from: classes.dex */
public final class JsonParser {
    @Deprecated
    public JsonParser() {
    }

    public static JsonElement parseReader(Reader reader) {
        try {
            JsonReader jsonReader = new JsonReader(reader);
            JsonElement parseReader = parseReader(jsonReader);
            if (!parseReader.isJsonNull() && jsonReader.peek() != JsonToken.END_DOCUMENT) {
                throw new JsonSyntaxException(new ObfuscatedString(new long[]{-88092387926060615L, -3478070496153521929L, -6121359443466742649L, 4596042732883776690L, -8153375312770073635L, -3815938582936747174L}).toString());
            }
            return parseReader;
        } catch (MalformedJsonException e) {
            throw new JsonSyntaxException(e);
        } catch (IOException e2) {
            throw new JsonIOException(e2);
        } catch (NumberFormatException e3) {
            throw new JsonSyntaxException(e3);
        }
    }

    public static JsonElement parseString(String str) {
        return parseReader(new StringReader(str));
    }

    @InlineMe(imports = {"com.google.gson.JsonParser"}, replacement = "JsonParser.parseString(json)")
    @Deprecated
    public JsonElement parse(String str) {
        return parseString(str);
    }

    @InlineMe(imports = {"com.google.gson.JsonParser"}, replacement = "JsonParser.parseReader(json)")
    @Deprecated
    public JsonElement parse(Reader reader) {
        return parseReader(reader);
    }

    @InlineMe(imports = {"com.google.gson.JsonParser"}, replacement = "JsonParser.parseReader(json)")
    @Deprecated
    public JsonElement parse(JsonReader jsonReader) {
        return parseReader(jsonReader);
    }

    public static JsonElement parseReader(JsonReader jsonReader) {
        Strictness strictness = jsonReader.getStrictness();
        if (strictness == Strictness.LEGACY_STRICT) {
            jsonReader.setStrictness(Strictness.LENIENT);
        }
        try {
            try {
                return Streams.parse(jsonReader);
            } catch (OutOfMemoryError e) {
                throw new JsonParseException(new ObfuscatedString(new long[]{-6861526303262810378L, -4774137604457470170L, 6845270909367339790L, -3403593323776022769L, 813739571122931625L}).toString() + jsonReader + new ObfuscatedString(new long[]{1247736214098132961L, -7386260986421512461L}).toString(), e);
            } catch (StackOverflowError e2) {
                throw new JsonParseException(new ObfuscatedString(new long[]{-7042223870957854661L, 8183534396576025876L, -3018036817927828317L, -7675158372184409158L, -7904728381058927897L}).toString() + jsonReader + new ObfuscatedString(new long[]{3030192155823982512L, 8673016933207993310L}).toString(), e2);
            }
        } finally {
            jsonReader.setStrictness(strictness);
        }
    }
}
