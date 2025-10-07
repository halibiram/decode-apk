package com.v2ray.ang.util;

import androidx.exifinterface.media.ExifInterface;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;
import com.google.gson.JsonPrimitive;
import com.google.gson.JsonSerializationContext;
import com.google.gson.reflect.TypeToken;
import com.panda912.muddy.ObfuscatedString;
import java.lang.reflect.Type;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0010\u0010\u0006\u001a\u00020\u00072\b\u0010\b\u001a\u0004\u0018\u00010\u0001J'\u0010\t\u001a\u0002H\n\"\u0004\b\u0000\u0010\n2\u0006\u0010\b\u001a\u00020\u00072\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u0002H\n0\f¢\u0006\u0002\u0010\rJ\u0012\u0010\u000e\u001a\u0004\u0018\u00010\u00072\b\u0010\b\u001a\u0004\u0018\u00010\u0001J\u0012\u0010\u000f\u001a\u0004\u0018\u00010\u00102\b\u0010\b\u001a\u0004\u0018\u00010\u0007R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0011"}, d2 = {"Lcom/v2ray/ang/util/JsonUtil;", "", "<init>", "()V", "gson", "Lcom/google/gson/Gson;", "toJson", "", "src", "fromJson", ExifInterface.GPS_DIRECTION_TRUE, "cls", "Ljava/lang/Class;", "(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;", "toJsonPretty", "parseString", "Lcom/google/gson/JsonObject;", "com.fbd.tunnel-404_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class JsonUtil {

    @NotNull
    public static final JsonUtil INSTANCE = new JsonUtil();

    @NotNull
    private static Gson gson = new Gson();

    private JsonUtil() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final JsonElement toJsonPretty$lambda$0(Double d, Type type, JsonSerializationContext jsonSerializationContext) {
        Integer num;
        if (d != null) {
            num = Integer.valueOf((int) d.doubleValue());
        } else {
            num = null;
        }
        return new JsonPrimitive(num);
    }

    public final <T> T fromJson(@NotNull String src, @NotNull Class<T> cls) {
        Intrinsics.checkNotNullParameter(src, new ObfuscatedString(new long[]{2581838739430330841L, -5583136722208215869L}).toString());
        Intrinsics.checkNotNullParameter(cls, new ObfuscatedString(new long[]{-742905047800453376L, 6095743390360304012L}).toString());
        return (T) gson.fromJson(src, (Class) cls);
    }

    @Nullable
    public final JsonObject parseString(@Nullable String src) {
        if (src == null) {
            return null;
        }
        try {
            return JsonParser.parseString(src).getAsJsonObject();
        } catch (Exception unused) {
            new ObfuscatedString(new long[]{-880825067152959620L, 451578791847622099L, 1485652413642766899L}).toString();
            new ObfuscatedString(new long[]{6396780583086758612L, 3234433559727958826L, 383898108094835682L, -9001520678919993151L, 8341220324223145763L}).toString();
            return null;
        }
    }

    @NotNull
    public final String toJson(@Nullable Object src) {
        String json = gson.toJson(src);
        Intrinsics.checkNotNullExpressionValue(json, new ObfuscatedString(new long[]{3793007187568341975L, -5319667548669465467L, -5433405017982296353L}).toString());
        return json;
    }

    @Nullable
    public final String toJsonPretty(@Nullable Object src) {
        if (src == null) {
            return null;
        }
        return new GsonBuilder().setPrettyPrinting().disableHtmlEscaping().registerTypeAdapter(new TypeToken<Double>() { // from class: com.v2ray.ang.util.JsonUtil$toJsonPretty$gsonPre$1
        }.getType(), new Object()).create().toJson(src);
    }
}
