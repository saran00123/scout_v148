.class public abstract Lcom/stripe/android/EphemeralOperation;
.super Ljava/lang/Object;
.source "EphemeralOperation.kt"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/android/EphemeralOperation$RetrieveKey;,
        Lcom/stripe/android/EphemeralOperation$Customer;,
        Lcom/stripe/android/EphemeralOperation$Issuing;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\"\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00080\u0018\u00002\u00020\u0001:\u0003\u000b\u000c\rB\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u0012\u0010\u0003\u001a\u00020\u0004X\u00a0\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0005\u0010\u0006R\u0018\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0008X\u00a0\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\t\u0010\n\u0082\u0001\u0003\u000e\u000f\u0010\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/stripe/android/EphemeralOperation;",
        "Landroid/os/Parcelable;",
        "()V",
        "id",
        "",
        "getId$stripe_release",
        "()Ljava/lang/String;",
        "productUsage",
        "",
        "getProductUsage$stripe_release",
        "()Ljava/util/Set;",
        "Customer",
        "Issuing",
        "RetrieveKey",
        "Lcom/stripe/android/EphemeralOperation$RetrieveKey;",
        "Lcom/stripe/android/EphemeralOperation$Customer;",
        "Lcom/stripe/android/EphemeralOperation$Issuing;",
        "stripe_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 9
    invoke-direct {p0}, Lcom/stripe/android/EphemeralOperation;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getId$stripe_release()Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getProductUsage$stripe_release()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method
