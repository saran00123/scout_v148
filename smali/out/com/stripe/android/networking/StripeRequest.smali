.class public abstract Lcom/stripe/android/networking/StripeRequest;
.super Ljava/lang/Object;
.source "StripeRequest.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/android/networking/StripeRequest$Method;,
        Lcom/stripe/android/networking/StripeRequest$MimeType;,
        Lcom/stripe/android/networking/StripeRequest$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nStripeRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StripeRequest.kt\ncom/stripe/android/networking/StripeRequest\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,149:1\n1#2:150\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u0012\n\u0002\u0008\u0003\n\u0002\u0010$\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008 \u0018\u0000 02\u00020\u0001:\u0003012B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0015\u0010+\u001a\u00020,2\u0006\u0010-\u001a\u00020.H\u0010\u00a2\u0006\u0002\u0008/R\u0012\u0010\u0003\u001a\u00020\u0004X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0005\u0010\u0006R\u0016\u0010\u0007\u001a\u0004\u0018\u00010\u0004X\u0094\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\u0006R\u0016\u0010\t\u001a\u0004\u0018\u00010\n8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000b\u0010\u000cR \u0010\r\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0002\u0008\u0003\u0018\u00010\u000e8@X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000f\u0010\u0010R\u0014\u0010\u0011\u001a\u00020\u00048PX\u0090\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0012\u0010\u0006R \u0010\u0013\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\u000e8@X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0014\u0010\u0010R\u0012\u0010\u0015\u001a\u00020\u0016X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0017\u0010\u0018R\u0012\u0010\u0019\u001a\u00020\u001aX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001b\u0010\u001cR\u0012\u0010\u001d\u001a\u00020\u001eX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001f\u0010 R\u001e\u0010!\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0002\u0008\u0003\u0018\u00010\u000eX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\"\u0010\u0010R\u0014\u0010#\u001a\u00020\u00048DX\u0084\u0004\u00a2\u0006\u0006\u001a\u0004\u0008$\u0010\u0006R\u000e\u0010%\u001a\u00020&X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\'\u001a\u00020\u00048@X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u0008(\u0010\u0006R\u0014\u0010)\u001a\u00020\u00048BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008*\u0010\u0006\u00a8\u00063"
    }
    d2 = {
        "Lcom/stripe/android/networking/StripeRequest;",
        "",
        "()V",
        "baseUrl",
        "",
        "getBaseUrl",
        "()Ljava/lang/String;",
        "body",
        "getBody",
        "bodyBytes",
        "",
        "getBodyBytes",
        "()[B",
        "compactParams",
        "",
        "getCompactParams$stripe_release",
        "()Ljava/util/Map;",
        "contentType",
        "getContentType$stripe_release",
        "headers",
        "getHeaders$stripe_release",
        "headersFactory",
        "Lcom/stripe/android/networking/RequestHeadersFactory;",
        "getHeadersFactory",
        "()Lcom/stripe/android/networking/RequestHeadersFactory;",
        "method",
        "Lcom/stripe/android/networking/StripeRequest$Method;",
        "getMethod",
        "()Lcom/stripe/android/networking/StripeRequest$Method;",
        "mimeType",
        "Lcom/stripe/android/networking/StripeRequest$MimeType;",
        "getMimeType",
        "()Lcom/stripe/android/networking/StripeRequest$MimeType;",
        "params",
        "getParams",
        "query",
        "getQuery",
        "queryStringFactory",
        "Lcom/stripe/android/networking/QueryStringFactory;",
        "url",
        "getUrl$stripe_release",
        "urlWithQuery",
        "getUrlWithQuery",
        "writeBody",
        "",
        "outputStream",
        "Ljava/io/OutputStream;",
        "writeBody$stripe_release",
        "Companion",
        "Method",
        "MimeType",
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

.field public static final Companion:Lcom/stripe/android/networking/StripeRequest$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final DEFAULT_SYSTEM_PROPERTY_SUPPLIER:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final body:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final queryStringFactory:Lcom/stripe/android/networking/QueryStringFactory;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/stripe/android/networking/StripeRequest$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/android/networking/StripeRequest$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/android/networking/StripeRequest;->Companion:Lcom/stripe/android/networking/StripeRequest$Companion;

    .line 113
    sget-object v0, Lcom/stripe/android/networking/StripeRequest$Companion$DEFAULT_SYSTEM_PROPERTY_SUPPLIER$1;->INSTANCE:Lcom/stripe/android/networking/StripeRequest$Companion$DEFAULT_SYSTEM_PROPERTY_SUPPLIER$1;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    sput-object v0, Lcom/stripe/android/networking/StripeRequest;->DEFAULT_SYSTEM_PROPERTY_SUPPLIER:Lkotlin/jvm/functions/Function1;

    .line 117
    sget-object v0, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/stripe/android/networking/StripeRequest;->CHARSET:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Lcom/stripe/android/networking/QueryStringFactory;

    invoke-direct {v0}, Lcom/stripe/android/networking/QueryStringFactory;-><init>()V

    iput-object v0, p0, Lcom/stripe/android/networking/StripeRequest;->queryStringFactory:Lcom/stripe/android/networking/QueryStringFactory;

    return-void
.end method

.method public static final synthetic access$getDEFAULT_SYSTEM_PROPERTY_SUPPLIER$cp()Lkotlin/jvm/functions/Function1;
    .registers 1

    .line 12
    sget-object v0, Lcom/stripe/android/networking/StripeRequest;->DEFAULT_SYSTEM_PROPERTY_SUPPLIER:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method private final getBodyBytes()[B
    .registers 11

    .line 67
    :try_start_0
    invoke-virtual {p0}, Lcom/stripe/android/networking/StripeRequest;->getBody()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1c

    sget-object v1, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    if-eqz v0, :cond_14

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    const-string v1, "(this as java.lang.String).getBytes(charset)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1d

    :cond_14
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1c
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_1c} :catch_1e

    :cond_1c
    const/4 v0, 0x0

    :goto_1d
    return-object v0

    :catch_1e
    move-exception v0

    .line 69
    new-instance v9, Lcom/stripe/android/exception/InvalidRequestException;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 70
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to encode parameters to "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v5}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ". "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "Please contact support@stripe.com for assistance."

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 72
    move-object v6, v0

    check-cast v6, Ljava/lang/Throwable;

    const/4 v7, 0x7

    const/4 v8, 0x0

    move-object v1, v9

    .line 69
    invoke-direct/range {v1 .. v8}, Lcom/stripe/android/exception/InvalidRequestException;-><init>(Lcom/stripe/android/StripeError;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v9, Ljava/lang/Throwable;

    throw v9
.end method

.method private final getUrlWithQuery()Ljava/lang/String;
    .registers 17

    const/4 v0, 0x2

    .line 84
    new-array v1, v0, [Ljava/lang/String;

    .line 85
    invoke-virtual/range {p0 .. p0}, Lcom/stripe/android/networking/StripeRequest;->getBaseUrl()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 86
    invoke-virtual/range {p0 .. p0}, Lcom/stripe/android/networking/StripeRequest;->getQuery()Ljava/lang/String;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    const/4 v5, 0x1

    if-lez v4, :cond_1a

    move v4, v5

    goto :goto_1b

    :cond_1a
    move v4, v3

    :goto_1b
    const/4 v6, 0x0

    if-eqz v4, :cond_1f

    goto :goto_20

    :cond_1f
    move-object v2, v6

    :goto_20
    aput-object v2, v1, v5

    .line 84
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOfNotNull([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Ljava/lang/Iterable;

    .line 90
    invoke-virtual/range {p0 .. p0}, Lcom/stripe/android/networking/StripeRequest;->getBaseUrl()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    const-string v2, "?"

    move-object v4, v2

    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v1, v4, v3, v0, v6}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    const-string v2, "&"

    :cond_3c
    move-object v8, v2

    check-cast v8, Ljava/lang/CharSequence;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v14, 0x3e

    const/4 v15, 0x0

    .line 87
    invoke-static/range {v7 .. v15}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract getBaseUrl()Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method protected getBody()Ljava/lang/String;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 62
    iget-object v0, p0, Lcom/stripe/android/networking/StripeRequest;->body:Ljava/lang/String;

    return-object v0
.end method

.method public final getCompactParams$stripe_release()Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 22
    invoke-virtual {p0}, Lcom/stripe/android/networking/StripeRequest;->getParams()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_d

    sget-object v1, Lcom/stripe/android/networking/StripeRequest;->Companion:Lcom/stripe/android/networking/StripeRequest$Companion;

    invoke-static {v1, v0}, Lcom/stripe/android/networking/StripeRequest$Companion;->access$compactParams(Lcom/stripe/android/networking/StripeRequest$Companion;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return-object v0
.end method

.method public getContentType$stripe_release()Ljava/lang/String;
    .registers 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/stripe/android/networking/StripeRequest;->getMimeType()Lcom/stripe/android/networking/StripeRequest$MimeType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "; charset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/stripe/android/networking/StripeRequest;->CHARSET:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getHeaders$stripe_release()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 46
    invoke-virtual {p0}, Lcom/stripe/android/networking/StripeRequest;->getHeadersFactory()Lcom/stripe/android/networking/RequestHeadersFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/stripe/android/networking/RequestHeadersFactory;->create()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public abstract getHeadersFactory()Lcom/stripe/android/networking/RequestHeadersFactory;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getMethod()Lcom/stripe/android/networking/StripeRequest$Method;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getMimeType()Lcom/stripe/android/networking/StripeRequest$MimeType;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getParams()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method protected final getQuery()Ljava/lang/String;
    .registers 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 79
    iget-object v0, p0, Lcom/stripe/android/networking/StripeRequest;->queryStringFactory:Lcom/stripe/android/networking/QueryStringFactory;

    invoke-virtual {p0}, Lcom/stripe/android/networking/StripeRequest;->getCompactParams$stripe_release()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/stripe/android/networking/QueryStringFactory;->create(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getUrl$stripe_release()Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;,
            Lcom/stripe/android/exception/InvalidRequestException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 32
    sget-object v0, Lcom/stripe/android/networking/StripeRequest$Method;->GET:Lcom/stripe/android/networking/StripeRequest$Method;

    invoke-virtual {p0}, Lcom/stripe/android/networking/StripeRequest;->getMethod()Lcom/stripe/android/networking/StripeRequest$Method;

    move-result-object v1

    if-ne v0, v1, :cond_d

    .line 33
    invoke-direct {p0}, Lcom/stripe/android/networking/StripeRequest;->getUrlWithQuery()Ljava/lang/String;

    move-result-object v0

    goto :goto_11

    .line 35
    :cond_d
    invoke-virtual {p0}, Lcom/stripe/android/networking/StripeRequest;->getBaseUrl()Ljava/lang/String;

    move-result-object v0

    :goto_11
    return-object v0
.end method

.method public writeBody$stripe_release(Ljava/io/OutputStream;)V
    .registers 3
    .param p1    # Ljava/io/OutputStream;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "outputStream"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    invoke-direct {p0}, Lcom/stripe/android/networking/StripeRequest;->getBodyBytes()[B

    move-result-object v0

    if-eqz v0, :cond_11

    .line 54
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 55
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    :cond_11
    return-void
.end method
