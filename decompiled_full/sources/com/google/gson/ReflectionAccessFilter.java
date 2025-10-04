package com.google.gson;

import com.google.gson.internal.ReflectionAccessFilterHelper;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes.dex */
public interface ReflectionAccessFilter {
    public static final ReflectionAccessFilter BLOCK_INACCESSIBLE_JAVA = new ReflectionAccessFilter() { // from class: com.google.gson.ReflectionAccessFilter.1
        @Override // com.google.gson.ReflectionAccessFilter
        public FilterResult check(Class<?> cls) {
            if (ReflectionAccessFilterHelper.isJavaType(cls)) {
                return FilterResult.BLOCK_INACCESSIBLE;
            }
            return FilterResult.INDECISIVE;
        }

        public String toString() {
            return new ObfuscatedString(new long[]{-3779076274979554200L, -1982398760953509931L, 8307274721331745841L, -2452761582206450189L, -5522661484409309228L, 2380417246651899646L, 3189743162360746181L}).toString();
        }
    };
    public static final ReflectionAccessFilter BLOCK_ALL_JAVA = new ReflectionAccessFilter() { // from class: com.google.gson.ReflectionAccessFilter.2
        @Override // com.google.gson.ReflectionAccessFilter
        public FilterResult check(Class<?> cls) {
            if (ReflectionAccessFilterHelper.isJavaType(cls)) {
                return FilterResult.BLOCK_ALL;
            }
            return FilterResult.INDECISIVE;
        }

        public String toString() {
            return new ObfuscatedString(new long[]{-1334652286891894094L, -3715013067763636289L, 8072842116748132090L, -3731001214402169301L, 435990063505978473L, 6553003873542255766L}).toString();
        }
    };
    public static final ReflectionAccessFilter BLOCK_ALL_ANDROID = new ReflectionAccessFilter() { // from class: com.google.gson.ReflectionAccessFilter.3
        @Override // com.google.gson.ReflectionAccessFilter
        public FilterResult check(Class<?> cls) {
            if (ReflectionAccessFilterHelper.isAndroidType(cls)) {
                return FilterResult.BLOCK_ALL;
            }
            return FilterResult.INDECISIVE;
        }

        public String toString() {
            return new ObfuscatedString(new long[]{4817598076684218013L, 8015604152822778121L, 564611921965267994L, 2876428026143018132L, -3234619851928748689L, -2330860237733207592L}).toString();
        }
    };
    public static final ReflectionAccessFilter BLOCK_ALL_PLATFORM = new ReflectionAccessFilter() { // from class: com.google.gson.ReflectionAccessFilter.4
        @Override // com.google.gson.ReflectionAccessFilter
        public FilterResult check(Class<?> cls) {
            if (ReflectionAccessFilterHelper.isAnyPlatformType(cls)) {
                return FilterResult.BLOCK_ALL;
            }
            return FilterResult.INDECISIVE;
        }

        public String toString() {
            return new ObfuscatedString(new long[]{4194699367783053580L, -1102541136878795417L, 619196020172979988L, 4213026409498064795L, -7927631860966310348L, 307382477945610755L, 8397825348422795367L}).toString();
        }
    };

    /* loaded from: classes.dex */
    public enum FilterResult {
        ALLOW,
        INDECISIVE,
        BLOCK_INACCESSIBLE,
        BLOCK_ALL
    }

    FilterResult check(Class<?> cls);
}
