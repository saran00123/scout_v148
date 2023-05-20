.class public final Lcom/stripe/android/view/CardWidget$Companion;
.super Ljava/lang/Object;
.source "CardWidget.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/android/view/CardWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0080T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0080T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0080T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/stripe/android/view/CardWidget$Companion;",
        "",
        "()V",
        "DEFAULT_POSTAL_CODE_ENABLED",
        "",
        "DEFAULT_POSTAL_CODE_REQUIRED",
        "DEFAULT_US_ZIP_CODE_REQUIRED",
        "stripe_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field static final synthetic $$INSTANCE:Lcom/stripe/android/view/CardWidget$Companion;

.field public static final DEFAULT_POSTAL_CODE_ENABLED:Z = true

.field public static final DEFAULT_POSTAL_CODE_REQUIRED:Z = false

.field public static final DEFAULT_US_ZIP_CODE_REQUIRED:Z = false


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 79
    new-instance v0, Lcom/stripe/android/view/CardWidget$Companion;

    invoke-direct {v0}, Lcom/stripe/android/view/CardWidget$Companion;-><init>()V

    sput-object v0, Lcom/stripe/android/view/CardWidget$Companion;->$$INSTANCE:Lcom/stripe/android/view/CardWidget$Companion;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
