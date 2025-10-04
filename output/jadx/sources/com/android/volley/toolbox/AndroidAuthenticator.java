package com.android.volley.toolbox;

import android.accounts.Account;
import android.accounts.AccountManager;
import android.accounts.AccountManagerFuture;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import androidx.annotation.VisibleForTesting;
import com.android.volley.AuthFailureError;
import com.panda912.muddy.ObfuscatedString;

@SuppressLint({"MissingPermission"})
/* loaded from: classes.dex */
public class AndroidAuthenticator implements Authenticator {
    private final Account mAccount;
    private final AccountManager mAccountManager;
    private final String mAuthTokenType;
    private final boolean mNotifyAuthFailure;

    public AndroidAuthenticator(Context context, Account account, String str) {
        this(context, account, str, false);
    }

    public Account getAccount() {
        return this.mAccount;
    }

    @Override // com.android.volley.toolbox.Authenticator
    public String getAuthToken() {
        String str;
        AccountManagerFuture<Bundle> authToken = this.mAccountManager.getAuthToken(this.mAccount, this.mAuthTokenType, this.mNotifyAuthFailure, null, null);
        try {
            Bundle result = authToken.getResult();
            if (authToken.isDone() && !authToken.isCancelled()) {
                if (!result.containsKey(new ObfuscatedString(new long[]{5129307381296838076L, 902645731959148015L}).toString())) {
                    str = result.getString(new ObfuscatedString(new long[]{-8534268527659825214L, -5966965224418187562L, 2454932379346867527L}).toString());
                } else {
                    throw new AuthFailureError((Intent) result.getParcelable(new ObfuscatedString(new long[]{-1100133771292425978L, 1877229886840167261L}).toString()));
                }
            } else {
                str = null;
            }
            if (str != null) {
                return str;
            }
            throw new AuthFailureError(new ObfuscatedString(new long[]{4445944942772770049L, 7002768610835151656L, 8863913961523309691L, 1205548011794559919L, -3400273109995070736L}).toString() + this.mAuthTokenType);
        } catch (Exception e) {
            throw new AuthFailureError(new ObfuscatedString(new long[]{-6609225734893784225L, -2124397974895743997L, -4589873039984089068L, 5491000487838166627L, -8455763929015036694L, 6892879881204129217L}).toString(), e);
        }
    }

    public String getAuthTokenType() {
        return this.mAuthTokenType;
    }

    @Override // com.android.volley.toolbox.Authenticator
    public void invalidateAuthToken(String str) {
        this.mAccountManager.invalidateAuthToken(this.mAccount.type, str);
    }

    public AndroidAuthenticator(Context context, Account account, String str, boolean z) {
        this(AccountManager.get(context), account, str, z);
    }

    @VisibleForTesting
    public AndroidAuthenticator(AccountManager accountManager, Account account, String str, boolean z) {
        this.mAccountManager = accountManager;
        this.mAccount = account;
        this.mAuthTokenType = str;
        this.mNotifyAuthFailure = z;
    }
}
