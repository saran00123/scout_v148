.class public final Lcom/stripe/android/networking/StripeConnection$Default;
.super Ljava/lang/Object;
.source "StripeConnection.kt"

# interfaces
.implements Lcom/stripe/android/networking/StripeConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/android/networking/StripeConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Default"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/android/networking/StripeConnection$Default$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0018\u0000 \u00172\u00020\u0001:\u0001\u0017B\u000f\u0008\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u0015\u001a\u00020\u0016H\u0016J\u0014\u0010\u000b\u001a\u0004\u0018\u00010\n2\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0005\u001a\u00020\u00068VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0007\u0010\u0008R\u0016\u0010\t\u001a\u0004\u0018\u00010\n8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000b\u0010\u000cR\u0014\u0010\r\u001a\u00020\u000e8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000f\u0010\u0010R\u0016\u0010\u0011\u001a\u0004\u0018\u00010\u00128BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0013\u0010\u0014\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/stripe/android/networking/StripeConnection$Default;",
        "Lcom/stripe/android/networking/StripeConnection;",
        "conn",
        "Ljavax/net/ssl/HttpsURLConnection;",
        "(Ljavax/net/ssl/HttpsURLConnection;)V",
        "response",
        "Lcom/stripe/android/networking/StripeResponse;",
        "getResponse",
        "()Lcom/stripe/android/networking/StripeResponse;",
        "responseBody",
        "",
        "getResponseBody",
        "()Ljava/lang/String;",
        "responseCode",
        "",
        "getResponseCode",
        "()I",
        "responseStream",
        "Ljava/io/InputStream;",
        "getResponseStream",
        "()Ljava/io/InputStream;",
        "close",
        "",
        "Companion",
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
.field private static final CHARSET:Ljava/lang/String;

.field private static final Companion:Lcom/stripe/android/networking/StripeConnection$Default$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final conn:Ljavax/net/ssl/HttpsURLConnection;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/stripe/android/networking/StripeConnection$Default$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/android/networking/StripeConnection$Default$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/android/networking/StripeConnection$Default;->Companion:Lcom/stripe/android/networking/StripeConnection$Default$Companion;

    .line 80
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/stripe/android/networking/StripeConnection$Default;->CHARSET:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljavax/net/ssl/HttpsURLConnection;)V
    .registers 3
    .param p1    # Ljavax/net/ssl/HttpsURLConnection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "conn"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/stripe/android/networking/StripeConnection$Default;->conn:Ljavax/net/ssl/HttpsURLConnection;

    return-void
.end method

.method private final getResponseBody()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 44
    invoke-direct {p0}, Lcom/stripe/android/networking/StripeConnection$Default;->getResponseStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/stripe/android/networking/StripeConnection$Default;->getResponseBody(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final getResponseBody(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    .line 64
    :cond_4
    new-instance v1, Ljava/util/Scanner;

    sget-object v2, Lcom/stripe/android/networking/StripeConnection$Default;->CHARSET:Ljava/lang/String;

    invoke-direct {v1, p1, v2}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    const-string v2, "\\A"

    invoke-virtual {v1, v2}, Ljava/util/Scanner;->useDelimiter(Ljava/lang/String;)Ljava/util/Scanner;

    move-result-object v1

    .line 65
    invoke-virtual {v1}, Ljava/util/Scanner;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 66
    invoke-virtual {v1}, Ljava/util/Scanner;->next()Ljava/lang/String;

    move-result-object v0

    .line 70
    :cond_1b
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    return-object v0
.end method

.method private final getResponseStream()Ljava/io/InputStream;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 50
    invoke-virtual {p0}, Lcom/stripe/android/networking/StripeConnection$Default;->getResponseCode()I

    move-result v0

    const/16 v1, 0xc8

    if-le v1, v0, :cond_9

    goto :goto_14

    :cond_9
    const/16 v1, 0x12b

    if-lt v1, v0, :cond_14

    .line 51
    iget-object v0, p0, Lcom/stripe/android/networking/StripeConnection$Default;->conn:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    goto :goto_1a

    .line 53
    :cond_14
    :goto_14
    iget-object v0, p0, Lcom/stripe/android/networking/StripeConnection$Default;->conn:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    :goto_1a
    return-object v0
.end method


# virtual methods
.method public close()V
    .registers 2

    .line 75
    invoke-direct {p0}, Lcom/stripe/android/networking/StripeConnection$Default;->getResponseStream()Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 76
    :cond_9
    iget-object v0, p0, Lcom/stripe/android/networking/StripeConnection$Default;->conn:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    return-void
.end method

.method public synthetic getResponse()Lcom/stripe/android/networking/StripeResponse;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 33
    invoke-virtual {p0}, Lcom/stripe/android/networking/StripeConnection$Default;->getResponseCode()I

    move-result v0

    .line 34
    new-instance v1, Lcom/stripe/android/networking/StripeResponse;

    .line 36
    invoke-direct {p0}, Lcom/stripe/android/networking/StripeConnection$Default;->getResponseBody()Ljava/lang/String;

    move-result-object v2

    .line 37
    iget-object v3, p0, Lcom/stripe/android/networking/StripeConnection$Default;->conn:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v3}, Ljavax/net/ssl/HttpsURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v3

    const-string v4, "conn.headerFields"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-direct {v1, v0, v2, v3}, Lcom/stripe/android/networking/StripeResponse;-><init>(ILjava/lang/String;Ljava/util/Map;)V

    return-object v1
.end method

.method public synthetic getResponseCode()I
    .registers 2

    .line 25
    iget-object v0, p0, Lcom/stripe/android/networking/StripeConnection$Default;->conn:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result v0

    return v0
.end method
