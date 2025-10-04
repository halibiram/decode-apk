package com.google.common.eventbus;

import com.google.common.base.MoreObjects;
import com.google.common.base.Preconditions;
import com.panda912.muddy.ObfuscatedString;

@ElementTypesAreNonnullByDefault
/* loaded from: classes2.dex */
public class DeadEvent {
    private final Object event;
    private final Object source;

    public DeadEvent(Object obj, Object obj2) {
        this.source = Preconditions.checkNotNull(obj);
        this.event = Preconditions.checkNotNull(obj2);
    }

    public Object getEvent() {
        return this.event;
    }

    public Object getSource() {
        return this.source;
    }

    public String toString() {
        return MoreObjects.toStringHelper(this).add(new ObfuscatedString(new long[]{9091539384477234364L, -2764696659018069334L}).toString(), this.source).add(new ObfuscatedString(new long[]{-6237588856750652563L, 7834800077670764333L}).toString(), this.event).toString();
    }
}
