.class public abstract Lcom/jakewharton/rxbinding2/view/ViewAttachDetachedEvent;
.super Lcom/jakewharton/rxbinding2/view/ViewAttachEvent;
.source "ViewAttachDetachedEvent.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Lcom/jakewharton/rxbinding2/view/ViewAttachEvent;-><init>()V

    return-void
.end method

.method public static create(Landroid/view/View;)Lcom/jakewharton/rxbinding2/view/ViewAttachDetachedEvent;
    .registers 2
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 19
    new-instance v0, Lcom/jakewharton/rxbinding2/view/AutoValue_ViewAttachDetachedEvent;

    invoke-direct {v0, p0}, Lcom/jakewharton/rxbinding2/view/AutoValue_ViewAttachDetachedEvent;-><init>(Landroid/view/View;)V

    return-object v0
.end method
