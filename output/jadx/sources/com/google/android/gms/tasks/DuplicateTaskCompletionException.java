package com.google.android.gms.tasks;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class DuplicateTaskCompletionException extends IllegalStateException {
    private DuplicateTaskCompletionException(String str, @Nullable Throwable th) {
        super(str, th);
    }

    @NonNull
    public static IllegalStateException of(@NonNull Task<?> task) {
        ObfuscatedString obfuscatedString;
        String obfuscatedString2;
        if (!task.isComplete()) {
            return new IllegalStateException(new ObfuscatedString(new long[]{-9025939642136980837L, 7294456753777603194L, 5887225099982342834L, 8612377629643571619L, 4988054835618469640L, -5422250203287915775L, 4367060660160330341L, -6947637672543268861L, -7984053492230359191L, -8007490147062755838L, -3569978608376399360L}).toString());
        }
        Exception exception = task.getException();
        if (exception != null) {
            obfuscatedString2 = new ObfuscatedString(new long[]{-2537225923030733707L, -6389696019318379778L}).toString();
        } else if (task.isSuccessful()) {
            obfuscatedString2 = new ObfuscatedString(new long[]{4288480436362331697L, 1252438912000925306L}).toString().concat(String.valueOf(task.getResult()));
        } else {
            if (task.isCanceled()) {
                obfuscatedString = new ObfuscatedString(new long[]{326478093024004661L, 7220677750387300222L, 8452043627752443804L});
            } else {
                obfuscatedString = new ObfuscatedString(new long[]{3135611598264575817L, 1374078578837895650L, -6280204616466424375L});
            }
            obfuscatedString2 = obfuscatedString.toString();
        }
        return new DuplicateTaskCompletionException(new ObfuscatedString(new long[]{-7707737313579734079L, 7361968264621686881L, -8607140006097296941L}).toString().concat(obfuscatedString2), exception);
    }
}
