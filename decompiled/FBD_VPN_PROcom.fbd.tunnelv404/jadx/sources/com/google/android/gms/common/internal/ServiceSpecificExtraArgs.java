package com.google.android.gms.common.internal;

import androidx.annotation.NonNull;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.panda912.muddy.ObfuscatedString;

@KeepForSdk
/* loaded from: classes2.dex */
public final class ServiceSpecificExtraArgs {

    @KeepForSdk
    /* loaded from: classes2.dex */
    public interface CastExtraArgs {

        @NonNull
        @KeepForSdk
        public static final String LISTENER = new ObfuscatedString(new long[]{6906272476868403804L, 1757042315276875106L}).toString();
    }

    @KeepForSdk
    /* loaded from: classes2.dex */
    public interface GamesExtraArgs {

        @NonNull
        @KeepForSdk
        public static final String GAME_PACKAGE_NAME = new ObfuscatedString(new long[]{4855815148561816243L, -2538012415686289132L, -5160299023835921157L, 3687205037687566431L, 2029983411227674103L, -1754375403846218416L, -5855504474289669015L}).toString();

        @NonNull
        @KeepForSdk
        public static final String DESIRED_LOCALE = new ObfuscatedString(new long[]{-7092665023850762618L, -8080994709945257518L, 4132496320199952541L, 7116929305794274025L, 544360572311256459L, -4347475281758012964L, -286366097829710688L}).toString();

        @NonNull
        @KeepForSdk
        public static final String WINDOW_TOKEN = new ObfuscatedString(new long[]{7265416181781247589L, -438515458243659502L, -4485617924511627889L, 5897056064882335156L, 5207335463136686609L, -7024508970964374000L, 5775814876104739169L, 5989462950762624577L}).toString();

        @NonNull
        @KeepForSdk
        public static final String SIGNIN_OPTIONS = new ObfuscatedString(new long[]{-4376168083073548793L, 7862374572217613874L, 4447796934109534841L, 5442872676359194441L, 3476010803840639284L, 3343547482383886850L, 400614337284621548L}).toString();
    }

    @KeepForSdk
    /* loaded from: classes2.dex */
    public interface PlusExtraArgs {

        @NonNull
        @KeepForSdk
        public static final String PLUS_AUTH_PACKAGE = new ObfuscatedString(new long[]{5895119488932876209L, 8280942367791325747L, -1731159859289769992L}).toString();
    }

    private ServiceSpecificExtraArgs() {
    }
}
