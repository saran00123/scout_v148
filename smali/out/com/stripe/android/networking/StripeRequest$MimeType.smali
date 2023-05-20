.class public final enum Lcom/stripe/android/networking/StripeRequest$MimeType;
.super Ljava/lang/Enum;
.source "StripeRequest.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/android/networking/StripeRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MimeType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/stripe/android/networking/StripeRequest$MimeType;",
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
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0008\u0008\u0080\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u0007\u001a\u00020\u0003H\u0016R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/stripe/android/networking/StripeRequest$MimeType;",
        "",
        "code",
        "",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "getCode",
        "()Ljava/lang/String;",
        "toString",
        "Form",
        "MultipartForm",
        "Json",
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
.field private static final synthetic $VALUES:[Lcom/stripe/android/networking/StripeRequest$MimeType;

.field public static final enum Form:Lcom/stripe/android/networking/StripeRequest$MimeType;

.field public static final enum Json:Lcom/stripe/android/networking/StripeRequest$MimeType;

.field public static final enum MultipartForm:Lcom/stripe/android/networking/StripeRequest$MimeType;


# instance fields
.field private final code:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/stripe/android/networking/StripeRequest$MimeType;

    new-instance v1, Lcom/stripe/android/networking/StripeRequest$MimeType;

    const/4 v2, 0x0

    const-string v3, "Form"

    const-string v4, "application/x-www-form-urlencoded"

    .line 105
    invoke-direct {v1, v3, v2, v4}, Lcom/stripe/android/networking/StripeRequest$MimeType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/stripe/android/networking/StripeRequest$MimeType;->Form:Lcom/stripe/android/networking/StripeRequest$MimeType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/stripe/android/networking/StripeRequest$MimeType;

    const/4 v2, 0x1

    const-string v3, "MultipartForm"

    const-string v4, "multipart/form-data"

    .line 106
    invoke-direct {v1, v3, v2, v4}, Lcom/stripe/android/networking/StripeRequest$MimeType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/stripe/android/networking/StripeRequest$MimeType;->MultipartForm:Lcom/stripe/android/networking/StripeRequest$MimeType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/stripe/android/networking/StripeRequest$MimeType;

    const/4 v2, 0x2

    const-string v3, "Json"

    const-string v4, "application/json"

    .line 107
    invoke-direct {v1, v3, v2, v4}, Lcom/stripe/android/networking/StripeRequest$MimeType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/stripe/android/networking/StripeRequest$MimeType;->Json:Lcom/stripe/android/networking/StripeRequest$MimeType;

    aput-object v1, v0, v2

    sput-object v0, Lcom/stripe/android/networking/StripeRequest$MimeType;->$VALUES:[Lcom/stripe/android/networking/StripeRequest$MimeType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 104
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/stripe/android/networking/StripeRequest$MimeType;->code:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/stripe/android/networking/StripeRequest$MimeType;
    .registers 2

    const-class v0, Lcom/stripe/android/networking/StripeRequest$MimeType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/stripe/android/networking/StripeRequest$MimeType;

    return-object p0
.end method

.method public static values()[Lcom/stripe/android/networking/StripeRequest$MimeType;
    .registers 1

    sget-object v0, Lcom/stripe/android/networking/StripeRequest$MimeType;->$VALUES:[Lcom/stripe/android/networking/StripeRequest$MimeType;

    invoke-virtual {v0}, [Lcom/stripe/android/networking/StripeRequest$MimeType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/stripe/android/networking/StripeRequest$MimeType;

    return-object v0
.end method


# virtual methods
.method public final getCode()Ljava/lang/String;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 104
    iget-object v0, p0, Lcom/stripe/android/networking/StripeRequest$MimeType;->code:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 109
    iget-object v0, p0, Lcom/stripe/android/networking/StripeRequest$MimeType;->code:Ljava/lang/String;

    return-object v0
.end method
