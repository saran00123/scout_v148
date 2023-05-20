.class public final Lcom/stripe/android/networking/ApiRequest;
.super Lcom/stripe/android/networking/StripeRequest;
.source "ApiRequest.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/android/networking/ApiRequest$Options;,
        Lcom/stripe/android/networking/ApiRequest$Factory;,
        Lcom/stripe/android/networking/ApiRequest$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010$\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0011\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\u0008\u0080\u0008\u0018\u0000 42\u00020\u0001:\u0003456Bk\u0008\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0014\u0008\u0002\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0002\u0008\u0003\u0018\u00010\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b\u0012\u0014\u0008\u0002\u0010\u000c\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\r\u0012\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0010J\t\u0010#\u001a\u00020\u0003H\u00c6\u0003J\t\u0010$\u001a\u00020\u0005H\u00c6\u0003J\u0015\u0010%\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0002\u0008\u0003\u0018\u00010\u0007H\u00c6\u0003J\u000e\u0010&\u001a\u00020\tH\u00c0\u0003\u00a2\u0006\u0002\u0008\'J\u000b\u0010(\u001a\u0004\u0018\u00010\u000bH\u00c2\u0003J\u0015\u0010)\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\rH\u00c2\u0003J\t\u0010*\u001a\u00020\u0005H\u00c2\u0003J\t\u0010+\u001a\u00020\u0005H\u00c2\u0003Js\u0010,\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0014\u0008\u0002\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0002\u0008\u0003\u0018\u00010\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t2\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b2\u0014\u0008\u0002\u0010\u000c\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\r2\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u0005H\u00c6\u0001J\u0013\u0010-\u001a\u00020.2\u0008\u0010/\u001a\u0004\u0018\u000100H\u00d6\u0003J\t\u00101\u001a\u000202H\u00d6\u0001J\u0008\u00103\u001a\u00020\u0005H\u0016R\u000e\u0010\u000e\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0004\u001a\u00020\u0005X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012R\u0014\u0010\u0013\u001a\u00020\u00058TX\u0094\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0014\u0010\u0012R\u0014\u0010\u0015\u001a\u00020\u0016X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018R\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u001aR\u0014\u0010\u001b\u001a\u00020\u001cX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001d\u0010\u001eR\u0014\u0010\u0008\u001a\u00020\tX\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001f\u0010 R \u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0002\u0008\u0003\u0018\u00010\u0007X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008!\u0010\"R\u000e\u0010\u000f\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u000c\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u00067"
    }
    d2 = {
        "Lcom/stripe/android/networking/ApiRequest;",
        "Lcom/stripe/android/networking/StripeRequest;",
        "method",
        "Lcom/stripe/android/networking/StripeRequest$Method;",
        "baseUrl",
        "",
        "params",
        "",
        "options",
        "Lcom/stripe/android/networking/ApiRequest$Options;",
        "appInfo",
        "Lcom/stripe/android/AppInfo;",
        "systemPropertySupplier",
        "Lkotlin/Function1;",
        "apiVersion",
        "sdkVersion",
        "(Lcom/stripe/android/networking/StripeRequest$Method;Ljava/lang/String;Ljava/util/Map;Lcom/stripe/android/networking/ApiRequest$Options;Lcom/stripe/android/AppInfo;Lkotlin/jvm/functions/Function1;Ljava/lang/String;Ljava/lang/String;)V",
        "getBaseUrl",
        "()Ljava/lang/String;",
        "body",
        "getBody",
        "headersFactory",
        "Lcom/stripe/android/networking/RequestHeadersFactory$Api;",
        "getHeadersFactory",
        "()Lcom/stripe/android/networking/RequestHeadersFactory$Api;",
        "getMethod",
        "()Lcom/stripe/android/networking/StripeRequest$Method;",
        "mimeType",
        "Lcom/stripe/android/networking/StripeRequest$MimeType;",
        "getMimeType",
        "()Lcom/stripe/android/networking/StripeRequest$MimeType;",
        "getOptions$stripe_release",
        "()Lcom/stripe/android/networking/ApiRequest$Options;",
        "getParams",
        "()Ljava/util/Map;",
        "component1",
        "component2",
        "component3",
        "component4",
        "component4$stripe_release",
        "component5",
        "component6",
        "component7",
        "component8",
        "copy",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "",
        "toString",
        "Companion",
        "Factory",
        "Options",
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
.field public static final API_HOST:Ljava/lang/String; = "https://api.stripe.com"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final Companion:Lcom/stripe/android/networking/ApiRequest$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final HEADER_STRIPE_CLIENT_USER_AGENT:Ljava/lang/String; = "X-Stripe-Client-User-Agent"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final apiVersion:Ljava/lang/String;

.field private final appInfo:Lcom/stripe/android/AppInfo;

.field private final baseUrl:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final headersFactory:Lcom/stripe/android/networking/RequestHeadersFactory$Api;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final method:Lcom/stripe/android/networking/StripeRequest$Method;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final mimeType:Lcom/stripe/android/networking/StripeRequest$MimeType;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final options:Lcom/stripe/android/networking/ApiRequest$Options;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final params:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final sdkVersion:Ljava/lang/String;

.field private final systemPropertySupplier:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/stripe/android/networking/ApiRequest$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/android/networking/ApiRequest$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/android/networking/ApiRequest;->Companion:Lcom/stripe/android/networking/ApiRequest$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/stripe/android/networking/StripeRequest$Method;Ljava/lang/String;Ljava/util/Map;Lcom/stripe/android/networking/ApiRequest$Options;Lcom/stripe/android/AppInfo;Lkotlin/jvm/functions/Function1;Ljava/lang/String;Ljava/lang/String;)V
    .registers 20
    .param p1    # Lcom/stripe/android/networking/StripeRequest$Method;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/stripe/android/networking/ApiRequest$Options;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lcom/stripe/android/AppInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p8    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/android/networking/StripeRequest$Method;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;",
            "Lcom/stripe/android/networking/ApiRequest$Options;",
            "Lcom/stripe/android/AppInfo;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    const-string v7, "method"

    invoke-static {p1, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "baseUrl"

    invoke-static {p2, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "options"

    invoke-static {p4, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "systemPropertySupplier"

    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "apiVersion"

    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "sdkVersion"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-direct {p0}, Lcom/stripe/android/networking/StripeRequest;-><init>()V

    iput-object v1, v0, Lcom/stripe/android/networking/ApiRequest;->method:Lcom/stripe/android/networking/StripeRequest$Method;

    iput-object v2, v0, Lcom/stripe/android/networking/ApiRequest;->baseUrl:Ljava/lang/String;

    move-object v1, p3

    iput-object v1, v0, Lcom/stripe/android/networking/ApiRequest;->params:Ljava/util/Map;

    iput-object v3, v0, Lcom/stripe/android/networking/ApiRequest;->options:Lcom/stripe/android/networking/ApiRequest$Options;

    move-object/from16 v1, p5

    iput-object v1, v0, Lcom/stripe/android/networking/ApiRequest;->appInfo:Lcom/stripe/android/AppInfo;

    iput-object v4, v0, Lcom/stripe/android/networking/ApiRequest;->systemPropertySupplier:Lkotlin/jvm/functions/Function1;

    iput-object v5, v0, Lcom/stripe/android/networking/ApiRequest;->apiVersion:Ljava/lang/String;

    iput-object v6, v0, Lcom/stripe/android/networking/ApiRequest;->sdkVersion:Ljava/lang/String;

    .line 25
    sget-object v1, Lcom/stripe/android/networking/StripeRequest$MimeType;->Form:Lcom/stripe/android/networking/StripeRequest$MimeType;

    iput-object v1, v0, Lcom/stripe/android/networking/ApiRequest;->mimeType:Lcom/stripe/android/networking/StripeRequest$MimeType;

    .line 27
    new-instance v1, Lcom/stripe/android/networking/RequestHeadersFactory$Api;

    .line 28
    iget-object v3, v0, Lcom/stripe/android/networking/ApiRequest;->options:Lcom/stripe/android/networking/ApiRequest$Options;

    .line 29
    iget-object v4, v0, Lcom/stripe/android/networking/ApiRequest;->appInfo:Lcom/stripe/android/AppInfo;

    .line 30
    iget-object v6, v0, Lcom/stripe/android/networking/ApiRequest;->systemPropertySupplier:Lkotlin/jvm/functions/Function1;

    .line 31
    iget-object v7, v0, Lcom/stripe/android/networking/ApiRequest;->apiVersion:Ljava/lang/String;

    .line 32
    iget-object v8, v0, Lcom/stripe/android/networking/ApiRequest;->sdkVersion:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v9, 0x4

    const/4 v10, 0x0

    move-object v2, v1

    .line 27
    invoke-direct/range {v2 .. v10}, Lcom/stripe/android/networking/RequestHeadersFactory$Api;-><init>(Lcom/stripe/android/networking/ApiRequest$Options;Lcom/stripe/android/AppInfo;Ljava/util/Locale;Lkotlin/jvm/functions/Function1;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v1, v0, Lcom/stripe/android/networking/ApiRequest;->headersFactory:Lcom/stripe/android/networking/RequestHeadersFactory$Api;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/stripe/android/networking/StripeRequest$Method;Ljava/lang/String;Ljava/util/Map;Lcom/stripe/android/networking/ApiRequest$Options;Lcom/stripe/android/AppInfo;Lkotlin/jvm/functions/Function1;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 23

    move/from16 v0, p9

    and-int/lit8 v1, v0, 0x4

    const/4 v2, 0x0

    if-eqz v1, :cond_c

    .line 18
    move-object v1, v2

    check-cast v1, Ljava/util/Map;

    move-object v6, v1

    goto :goto_d

    :cond_c
    move-object v6, p3

    :goto_d
    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_16

    .line 20
    move-object v1, v2

    check-cast v1, Lcom/stripe/android/AppInfo;

    move-object v8, v1

    goto :goto_18

    :cond_16
    move-object/from16 v8, p5

    :goto_18
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_24

    .line 21
    sget-object v1, Lcom/stripe/android/networking/StripeRequest;->Companion:Lcom/stripe/android/networking/StripeRequest$Companion;

    invoke-virtual {v1}, Lcom/stripe/android/networking/StripeRequest$Companion;->getDEFAULT_SYSTEM_PROPERTY_SUPPLIER$stripe_release()Lkotlin/jvm/functions/Function1;

    move-result-object v1

    move-object v9, v1

    goto :goto_26

    :cond_24
    move-object/from16 v9, p6

    :goto_26
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_36

    .line 22
    sget-object v1, Lcom/stripe/android/ApiVersion;->Companion:Lcom/stripe/android/ApiVersion$Companion;

    invoke-virtual {v1}, Lcom/stripe/android/ApiVersion$Companion;->get$stripe_release()Lcom/stripe/android/ApiVersion;

    move-result-object v1

    invoke-virtual {v1}, Lcom/stripe/android/ApiVersion;->getCode$stripe_release()Ljava/lang/String;

    move-result-object v1

    move-object v10, v1

    goto :goto_38

    :cond_36
    move-object/from16 v10, p7

    :goto_38
    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_40

    const-string v0, "AndroidBindings/16.1.1"

    move-object v11, v0

    goto :goto_42

    :cond_40
    move-object/from16 v11, p8

    :goto_42
    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object/from16 v7, p4

    .line 23
    invoke-direct/range {v3 .. v11}, Lcom/stripe/android/networking/ApiRequest;-><init>(Lcom/stripe/android/networking/StripeRequest$Method;Ljava/lang/String;Ljava/util/Map;Lcom/stripe/android/networking/ApiRequest$Options;Lcom/stripe/android/AppInfo;Lkotlin/jvm/functions/Function1;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private final component5()Lcom/stripe/android/AppInfo;
    .registers 2

    iget-object v0, p0, Lcom/stripe/android/networking/ApiRequest;->appInfo:Lcom/stripe/android/AppInfo;

    return-object v0
.end method

.method private final component6()Lkotlin/jvm/functions/Function1;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/stripe/android/networking/ApiRequest;->systemPropertySupplier:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method private final component7()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/stripe/android/networking/ApiRequest;->apiVersion:Ljava/lang/String;

    return-object v0
.end method

.method private final component8()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/stripe/android/networking/ApiRequest;->sdkVersion:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic copy$default(Lcom/stripe/android/networking/ApiRequest;Lcom/stripe/android/networking/StripeRequest$Method;Ljava/lang/String;Ljava/util/Map;Lcom/stripe/android/networking/ApiRequest$Options;Lcom/stripe/android/AppInfo;Lkotlin/jvm/functions/Function1;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/stripe/android/networking/ApiRequest;
    .registers 20

    move-object v0, p0

    move/from16 v1, p9

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_c

    invoke-virtual {p0}, Lcom/stripe/android/networking/ApiRequest;->getMethod()Lcom/stripe/android/networking/StripeRequest$Method;

    move-result-object v2

    goto :goto_d

    :cond_c
    move-object v2, p1

    :goto_d
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_16

    invoke-virtual {p0}, Lcom/stripe/android/networking/ApiRequest;->getBaseUrl()Ljava/lang/String;

    move-result-object v3

    goto :goto_17

    :cond_16
    move-object v3, p2

    :goto_17
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_20

    invoke-virtual {p0}, Lcom/stripe/android/networking/ApiRequest;->getParams()Ljava/util/Map;

    move-result-object v4

    goto :goto_21

    :cond_20
    move-object v4, p3

    :goto_21
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_28

    iget-object v5, v0, Lcom/stripe/android/networking/ApiRequest;->options:Lcom/stripe/android/networking/ApiRequest$Options;

    goto :goto_29

    :cond_28
    move-object v5, p4

    :goto_29
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_30

    iget-object v6, v0, Lcom/stripe/android/networking/ApiRequest;->appInfo:Lcom/stripe/android/AppInfo;

    goto :goto_31

    :cond_30
    move-object v6, p5

    :goto_31
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_38

    iget-object v7, v0, Lcom/stripe/android/networking/ApiRequest;->systemPropertySupplier:Lkotlin/jvm/functions/Function1;

    goto :goto_39

    :cond_38
    move-object v7, p6

    :goto_39
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_40

    iget-object v8, v0, Lcom/stripe/android/networking/ApiRequest;->apiVersion:Ljava/lang/String;

    goto :goto_42

    :cond_40
    move-object/from16 v8, p7

    :goto_42
    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_49

    iget-object v1, v0, Lcom/stripe/android/networking/ApiRequest;->sdkVersion:Ljava/lang/String;

    goto :goto_4b

    :cond_49
    move-object/from16 v1, p8

    :goto_4b
    move-object p1, v2

    move-object p2, v3

    move-object p3, v4

    move-object p4, v5

    move-object p5, v6

    move-object p6, v7

    move-object/from16 p7, v8

    move-object/from16 p8, v1

    invoke-virtual/range {p0 .. p8}, Lcom/stripe/android/networking/ApiRequest;->copy(Lcom/stripe/android/networking/StripeRequest$Method;Ljava/lang/String;Ljava/util/Map;Lcom/stripe/android/networking/ApiRequest$Options;Lcom/stripe/android/AppInfo;Lkotlin/jvm/functions/Function1;Ljava/lang/String;Ljava/lang/String;)Lcom/stripe/android/networking/ApiRequest;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Lcom/stripe/android/networking/StripeRequest$Method;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/stripe/android/networking/ApiRequest;->getMethod()Lcom/stripe/android/networking/StripeRequest$Method;

    move-result-object v0

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/stripe/android/networking/ApiRequest;->getBaseUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final component3()Ljava/util/Map;
    .registers 2
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

    invoke-virtual {p0}, Lcom/stripe/android/networking/ApiRequest;->getParams()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final component4$stripe_release()Lcom/stripe/android/networking/ApiRequest$Options;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/stripe/android/networking/ApiRequest;->options:Lcom/stripe/android/networking/ApiRequest$Options;

    return-object v0
.end method

.method public final copy(Lcom/stripe/android/networking/StripeRequest$Method;Ljava/lang/String;Ljava/util/Map;Lcom/stripe/android/networking/ApiRequest$Options;Lcom/stripe/android/AppInfo;Lkotlin/jvm/functions/Function1;Ljava/lang/String;Ljava/lang/String;)Lcom/stripe/android/networking/ApiRequest;
    .registers 19
    .param p1    # Lcom/stripe/android/networking/StripeRequest$Method;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/stripe/android/networking/ApiRequest$Options;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lcom/stripe/android/AppInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p8    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/android/networking/StripeRequest$Method;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;",
            "Lcom/stripe/android/networking/ApiRequest$Options;",
            "Lcom/stripe/android/AppInfo;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/stripe/android/networking/ApiRequest;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "method"

    move-object v2, p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "baseUrl"

    move-object v3, p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "options"

    move-object v5, p4

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "systemPropertySupplier"

    move-object/from16 v7, p6

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "apiVersion"

    move-object/from16 v8, p7

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sdkVersion"

    move-object/from16 v9, p8

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/stripe/android/networking/ApiRequest;

    move-object v1, v0

    move-object v4, p3

    move-object v6, p5

    invoke-direct/range {v1 .. v9}, Lcom/stripe/android/networking/ApiRequest;-><init>(Lcom/stripe/android/networking/StripeRequest$Method;Ljava/lang/String;Ljava/util/Map;Lcom/stripe/android/networking/ApiRequest$Options;Lcom/stripe/android/AppInfo;Lkotlin/jvm/functions/Function1;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-eq p0, p1, :cond_67

    instance-of v0, p1, Lcom/stripe/android/networking/ApiRequest;

    if-eqz v0, :cond_65

    check-cast p1, Lcom/stripe/android/networking/ApiRequest;

    invoke-virtual {p0}, Lcom/stripe/android/networking/ApiRequest;->getMethod()Lcom/stripe/android/networking/StripeRequest$Method;

    move-result-object v0

    invoke-virtual {p1}, Lcom/stripe/android/networking/ApiRequest;->getMethod()Lcom/stripe/android/networking/StripeRequest$Method;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_65

    invoke-virtual {p0}, Lcom/stripe/android/networking/ApiRequest;->getBaseUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/stripe/android/networking/ApiRequest;->getBaseUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_65

    invoke-virtual {p0}, Lcom/stripe/android/networking/ApiRequest;->getParams()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1}, Lcom/stripe/android/networking/ApiRequest;->getParams()Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_65

    iget-object v0, p0, Lcom/stripe/android/networking/ApiRequest;->options:Lcom/stripe/android/networking/ApiRequest$Options;

    iget-object v1, p1, Lcom/stripe/android/networking/ApiRequest;->options:Lcom/stripe/android/networking/ApiRequest$Options;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_65

    iget-object v0, p0, Lcom/stripe/android/networking/ApiRequest;->appInfo:Lcom/stripe/android/AppInfo;

    iget-object v1, p1, Lcom/stripe/android/networking/ApiRequest;->appInfo:Lcom/stripe/android/AppInfo;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_65

    iget-object v0, p0, Lcom/stripe/android/networking/ApiRequest;->systemPropertySupplier:Lkotlin/jvm/functions/Function1;

    iget-object v1, p1, Lcom/stripe/android/networking/ApiRequest;->systemPropertySupplier:Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_65

    iget-object v0, p0, Lcom/stripe/android/networking/ApiRequest;->apiVersion:Ljava/lang/String;

    iget-object v1, p1, Lcom/stripe/android/networking/ApiRequest;->apiVersion:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_65

    iget-object v0, p0, Lcom/stripe/android/networking/ApiRequest;->sdkVersion:Ljava/lang/String;

    iget-object p1, p1, Lcom/stripe/android/networking/ApiRequest;->sdkVersion:Ljava/lang/String;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_65

    goto :goto_67

    :cond_65
    const/4 p1, 0x0

    return p1

    :cond_67
    :goto_67
    const/4 p1, 0x1

    return p1
.end method

.method public getBaseUrl()Ljava/lang/String;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 17
    iget-object v0, p0, Lcom/stripe/android/networking/ApiRequest;->baseUrl:Ljava/lang/String;

    return-object v0
.end method

.method protected getBody()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;,
            Lcom/stripe/android/exception/InvalidRequestException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 38
    invoke-virtual {p0}, Lcom/stripe/android/networking/ApiRequest;->getQuery()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHeadersFactory()Lcom/stripe/android/networking/RequestHeadersFactory$Api;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 27
    iget-object v0, p0, Lcom/stripe/android/networking/ApiRequest;->headersFactory:Lcom/stripe/android/networking/RequestHeadersFactory$Api;

    return-object v0
.end method

.method public bridge synthetic getHeadersFactory()Lcom/stripe/android/networking/RequestHeadersFactory;
    .registers 2

    .line 15
    invoke-virtual {p0}, Lcom/stripe/android/networking/ApiRequest;->getHeadersFactory()Lcom/stripe/android/networking/RequestHeadersFactory$Api;

    move-result-object v0

    check-cast v0, Lcom/stripe/android/networking/RequestHeadersFactory;

    return-object v0
.end method

.method public getMethod()Lcom/stripe/android/networking/StripeRequest$Method;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 16
    iget-object v0, p0, Lcom/stripe/android/networking/ApiRequest;->method:Lcom/stripe/android/networking/StripeRequest$Method;

    return-object v0
.end method

.method public getMimeType()Lcom/stripe/android/networking/StripeRequest$MimeType;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 25
    iget-object v0, p0, Lcom/stripe/android/networking/ApiRequest;->mimeType:Lcom/stripe/android/networking/StripeRequest$MimeType;

    return-object v0
.end method

.method public final getOptions$stripe_release()Lcom/stripe/android/networking/ApiRequest$Options;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 19
    iget-object v0, p0, Lcom/stripe/android/networking/ApiRequest;->options:Lcom/stripe/android/networking/ApiRequest$Options;

    return-object v0
.end method

.method public getParams()Ljava/util/Map;
    .registers 2
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

    .line 18
    iget-object v0, p0, Lcom/stripe/android/networking/ApiRequest;->params:Ljava/util/Map;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    invoke-virtual {p0}, Lcom/stripe/android/networking/ApiRequest;->getMethod()Lcom/stripe/android/networking/StripeRequest$Method;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_d

    :cond_c
    move v0, v1

    :goto_d
    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/stripe/android/networking/ApiRequest;->getBaseUrl()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1a

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1b

    :cond_1a
    move v2, v1

    :goto_1b
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/stripe/android/networking/ApiRequest;->getParams()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_29

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2a

    :cond_29
    move v2, v1

    :goto_2a
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/stripe/android/networking/ApiRequest;->options:Lcom/stripe/android/networking/ApiRequest$Options;

    if-eqz v2, :cond_36

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_37

    :cond_36
    move v2, v1

    :goto_37
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/stripe/android/networking/ApiRequest;->appInfo:Lcom/stripe/android/AppInfo;

    if-eqz v2, :cond_43

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_44

    :cond_43
    move v2, v1

    :goto_44
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/stripe/android/networking/ApiRequest;->systemPropertySupplier:Lkotlin/jvm/functions/Function1;

    if-eqz v2, :cond_50

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_51

    :cond_50
    move v2, v1

    :goto_51
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/stripe/android/networking/ApiRequest;->apiVersion:Ljava/lang/String;

    if-eqz v2, :cond_5d

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_5e

    :cond_5d
    move v2, v1

    :goto_5e
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/stripe/android/networking/ApiRequest;->sdkVersion:Ljava/lang/String;

    if-eqz v2, :cond_69

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_69
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/stripe/android/networking/ApiRequest;->getMethod()Lcom/stripe/android/networking/StripeRequest$Method;

    move-result-object v1

    invoke-virtual {v1}, Lcom/stripe/android/networking/StripeRequest$Method;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/stripe/android/networking/ApiRequest;->getBaseUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
