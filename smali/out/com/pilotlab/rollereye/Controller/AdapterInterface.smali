.class public interface abstract Lcom/pilotlab/rollereye/Controller/AdapterInterface;
.super Ljava/lang/Object;
.source "AdapterInterface.java"


# virtual methods
.method public abstract addData(ILjava/lang/Object;)V
.end method

.method public abstract addDataAndUpdateUI(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)V"
        }
    .end annotation
.end method

.method public abstract clearDataAndUpdateUI()V
.end method

.method public abstract removeData(I)V
.end method

.method public abstract setDataAndUpdateUI(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)V"
        }
    .end annotation
.end method

.method public abstract updateUI()V
.end method
