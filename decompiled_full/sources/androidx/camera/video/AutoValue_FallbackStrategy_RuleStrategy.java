package androidx.camera.video;

import androidx.annotation.NonNull;
import androidx.camera.video.FallbackStrategy;
import defpackage.AbstractC0362x4440ab85;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class AutoValue_FallbackStrategy_RuleStrategy extends FallbackStrategy.RuleStrategy {
    private final Quality fallbackQuality;
    private final int fallbackRule;

    public AutoValue_FallbackStrategy_RuleStrategy(Quality quality, int i) {
        if (quality != null) {
            this.fallbackQuality = quality;
            this.fallbackRule = i;
            return;
        }
        throw new NullPointerException("Null fallbackQuality");
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof FallbackStrategy.RuleStrategy)) {
            return false;
        }
        FallbackStrategy.RuleStrategy ruleStrategy = (FallbackStrategy.RuleStrategy) obj;
        if (this.fallbackQuality.equals(ruleStrategy.getFallbackQuality()) && this.fallbackRule == ruleStrategy.getFallbackRule()) {
            return true;
        }
        return false;
    }

    @Override // androidx.camera.video.FallbackStrategy.RuleStrategy
    @NonNull
    public Quality getFallbackQuality() {
        return this.fallbackQuality;
    }

    @Override // androidx.camera.video.FallbackStrategy.RuleStrategy
    public int getFallbackRule() {
        return this.fallbackRule;
    }

    public int hashCode() {
        return ((this.fallbackQuality.hashCode() ^ 1000003) * 1000003) ^ this.fallbackRule;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("RuleStrategy{fallbackQuality=");
        sb.append(this.fallbackQuality);
        sb.append(", fallbackRule=");
        return AbstractC0362x4440ab85.m2935x1db10c9d(sb, "}", this.fallbackRule);
    }
}
