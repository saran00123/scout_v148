.class public abstract Lcom/jakewharton/rxbinding2/widget/AdapterViewSelectionEvent;
.super Ljava/lang/Object;
.source "AdapterViewSelectionEvent.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract view()Landroid/widget/AdapterView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/widget/AdapterView<",
            "*>;"
        }
    .end annotation
.end method
