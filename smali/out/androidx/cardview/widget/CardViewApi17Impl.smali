.class Landroidx/cardview/widget/CardViewApi17Impl;
.super Landroidx/cardview/widget/CardViewBaseImpl;
.source "CardViewApi17Impl.java"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x11
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Landroidx/cardview/widget/CardViewBaseImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public initStatic()V
    .registers 2

    .line 29
    new-instance v0, Landroidx/cardview/widget/CardViewApi17Impl$1;

    invoke-direct {v0, p0}, Landroidx/cardview/widget/CardViewApi17Impl$1;-><init>(Landroidx/cardview/widget/CardViewApi17Impl;)V

    sput-object v0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->sRoundRectHelper:Landroidx/cardview/widget/RoundRectDrawableWithShadow$RoundRectHelper;

    return-void
.end method
