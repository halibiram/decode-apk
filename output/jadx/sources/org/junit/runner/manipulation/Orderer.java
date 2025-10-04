package org.junit.runner.manipulation;

import j$.util.DesugarCollections;
import java.util.Collection;
import java.util.HashSet;
import java.util.List;
import org.junit.runner.Description;

/* loaded from: classes3.dex */
public final class Orderer {
    private final Ordering ordering;

    public Orderer(Ordering ordering) {
        this.ordering = ordering;
    }

    public void apply(Object obj) {
        if (obj instanceof Orderable) {
            ((Orderable) obj).order(this);
        }
    }

    public List<Description> order(Collection<Description> collection) {
        List<Description> orderItems = this.ordering.orderItems(DesugarCollections.unmodifiableCollection(collection));
        if (!this.ordering.validateOrderingIsCorrect()) {
            return orderItems;
        }
        HashSet hashSet = new HashSet(collection);
        if (hashSet.containsAll(orderItems)) {
            HashSet hashSet2 = new HashSet(orderItems);
            if (hashSet2.size() == orderItems.size()) {
                if (hashSet2.containsAll(hashSet)) {
                    return orderItems;
                }
                throw new InvalidOrderingException("Ordering removed items");
            }
            throw new InvalidOrderingException("Ordering duplicated items");
        }
        throw new InvalidOrderingException("Ordering added items");
    }
}
