package com.airbnb.lottie.model;

import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes.dex */
public class Marker {
    private static final String CARRIAGE_RETURN = new ObfuscatedString(new long[]{3428802255536670509L, -4191587871245366105L}).toString();
    public final float durationFrames;
    private final String name;
    public final float startFrame;

    public Marker(String str, float f, float f2) {
        this.name = str;
        this.durationFrames = f2;
        this.startFrame = f;
    }

    public float getDurationFrames() {
        return this.durationFrames;
    }

    public String getName() {
        return this.name;
    }

    public float getStartFrame() {
        return this.startFrame;
    }

    public boolean matchesName(String str) {
        if (this.name.equalsIgnoreCase(str)) {
            return true;
        }
        if (this.name.endsWith(new ObfuscatedString(new long[]{-2639259652101028787L, 3151965601589825821L}).toString())) {
            String str2 = this.name;
            if (str2.substring(0, str2.length() - 1).equalsIgnoreCase(str)) {
                return true;
            }
        }
        return false;
    }
}
