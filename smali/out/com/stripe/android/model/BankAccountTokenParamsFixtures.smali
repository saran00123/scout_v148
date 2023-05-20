.class public final Lcom/stripe/android/model/BankAccountTokenParamsFixtures;
.super Ljava/lang/Object;
.source "BankAccountTokenParamsFixtures.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcom/stripe/android/model/BankAccountTokenParamsFixtures;",
        "",
        "()V",
        "DEFAULT",
        "Lcom/stripe/android/model/BankAccountTokenParams;",
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
.field public static final DEFAULT:Lcom/stripe/android/model/BankAccountTokenParams;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final INSTANCE:Lcom/stripe/android/model/BankAccountTokenParamsFixtures;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .line 3
    new-instance v0, Lcom/stripe/android/model/BankAccountTokenParamsFixtures;

    invoke-direct {v0}, Lcom/stripe/android/model/BankAccountTokenParamsFixtures;-><init>()V

    sput-object v0, Lcom/stripe/android/model/BankAccountTokenParamsFixtures;->INSTANCE:Lcom/stripe/android/model/BankAccountTokenParamsFixtures;

    .line 5
    new-instance v0, Lcom/stripe/android/model/BankAccountTokenParams;

    .line 11
    sget-object v5, Lcom/stripe/android/model/BankAccountTokenParams$Type;->Individual:Lcom/stripe/android/model/BankAccountTokenParams$Type;

    const-string v2, "US"

    const-string v3, "usd"

    const-string v4, "000123456789"

    const-string v7, "110000000"

    const-string v6, "Jenny Rosen"

    move-object v1, v0

    .line 5
    invoke-direct/range {v1 .. v7}, Lcom/stripe/android/model/BankAccountTokenParams;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/android/model/BankAccountTokenParams$Type;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/stripe/android/model/BankAccountTokenParamsFixtures;->DEFAULT:Lcom/stripe/android/model/BankAccountTokenParams;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
