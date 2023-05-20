.class public final Lcom/stripe/android/view/CardWidget$DefaultImpls;
.super Ljava/lang/Object;
.source "CardWidget.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/android/view/CardWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# direct methods
.method public static synthetic getCard$annotations()V
    .registers 0
    .annotation runtime Lkotlin/Deprecated;
        message = "Use cardParams"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "cardParams"
            imports = {}
        .end subannotation
    .end annotation

    return-void
.end method

.method public static synthetic getCardBuilder$annotations()V
    .registers 0
    .annotation runtime Lkotlin/Deprecated;
        message = "Use cardParams"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "cardParams"
            imports = {}
        .end subannotation
    .end annotation

    return-void
.end method
