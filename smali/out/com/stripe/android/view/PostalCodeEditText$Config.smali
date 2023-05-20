.class public final enum Lcom/stripe/android/view/PostalCodeEditText$Config;
.super Ljava/lang/Enum;
.source "PostalCodeEditText.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/android/view/PostalCodeEditText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Config"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/stripe/android/view/PostalCodeEditText$Config;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0004\u0008\u0080\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcom/stripe/android/view/PostalCodeEditText$Config;",
        "",
        "(Ljava/lang/String;I)V",
        "Global",
        "US",
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
.field private static final synthetic $VALUES:[Lcom/stripe/android/view/PostalCodeEditText$Config;

.field public static final enum Global:Lcom/stripe/android/view/PostalCodeEditText$Config;

.field public static final enum US:Lcom/stripe/android/view/PostalCodeEditText$Config;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/stripe/android/view/PostalCodeEditText$Config;

    new-instance v1, Lcom/stripe/android/view/PostalCodeEditText$Config;

    const/4 v2, 0x0

    const-string v3, "Global"

    invoke-direct {v1, v3, v2}, Lcom/stripe/android/view/PostalCodeEditText$Config;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/stripe/android/view/PostalCodeEditText$Config;->Global:Lcom/stripe/android/view/PostalCodeEditText$Config;

    aput-object v1, v0, v2

    new-instance v1, Lcom/stripe/android/view/PostalCodeEditText$Config;

    const/4 v2, 0x1

    const-string v3, "US"

    invoke-direct {v1, v3, v2}, Lcom/stripe/android/view/PostalCodeEditText$Config;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/stripe/android/view/PostalCodeEditText$Config;->US:Lcom/stripe/android/view/PostalCodeEditText$Config;

    aput-object v1, v0, v2

    sput-object v0, Lcom/stripe/android/view/PostalCodeEditText$Config;->$VALUES:[Lcom/stripe/android/view/PostalCodeEditText$Config;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 110
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/stripe/android/view/PostalCodeEditText$Config;
    .registers 2

    const-class v0, Lcom/stripe/android/view/PostalCodeEditText$Config;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/stripe/android/view/PostalCodeEditText$Config;

    return-object p0
.end method

.method public static values()[Lcom/stripe/android/view/PostalCodeEditText$Config;
    .registers 1

    sget-object v0, Lcom/stripe/android/view/PostalCodeEditText$Config;->$VALUES:[Lcom/stripe/android/view/PostalCodeEditText$Config;

    invoke-virtual {v0}, [Lcom/stripe/android/view/PostalCodeEditText$Config;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/stripe/android/view/PostalCodeEditText$Config;

    return-object v0
.end method
