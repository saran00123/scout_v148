.class public interface abstract Landroidx/navigation/Navigator$OnNavigatorBackPressListener;
.super Ljava/lang/Object;
.source "Navigator.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/navigation/Navigator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnNavigatorBackPressListener"
.end annotation


# virtual methods
.method public abstract onPopBackStack(Landroidx/navigation/Navigator;)V
    .param p1    # Landroidx/navigation/Navigator;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method
