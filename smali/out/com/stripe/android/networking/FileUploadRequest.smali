.class public final Lcom/stripe/android/networking/FileUploadRequest;
.super Lcom/stripe/android/networking/StripeRequest;
.source "FileUploadRequest.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/android/networking/FileUploadRequest$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000^\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010$\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0000\u0018\u0000 32\u00020\u0001:\u00013BA\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\u0014\u0008\u0002\u0010\u0008\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\n0\t\u0012\u0008\u0008\u0002\u0010\u000b\u001a\u00020\n\u00a2\u0006\u0002\u0010\u000cJ\u0015\u0010)\u001a\u00020*2\u0006\u0010+\u001a\u00020,H\u0010\u00a2\u0006\u0002\u0008-J\u0010\u0010.\u001a\u00020*2\u0006\u0010+\u001a\u00020,H\u0002J\u0018\u0010/\u001a\u00020*2\u0006\u00100\u001a\u0002012\u0006\u00102\u001a\u00020\nH\u0002R\u0014\u0010\r\u001a\u00020\nX\u0096D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u000e\u0010\u000b\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0010\u001a\u00020\n8PX\u0090\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0011\u0010\u000fR\u001a\u0010\u0012\u001a\u00020\n8@X\u0081\u0004\u00a2\u0006\u000c\u0012\u0004\u0008\u0013\u0010\u0014\u001a\u0004\u0008\u0015\u0010\u000fR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0016\u001a\u00020\u0017X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019R\u0014\u0010\u001a\u001a\u00020\u001bX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001c\u0010\u001dR\u0014\u0010\u001e\u001a\u00020\u001fX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008 \u0010!R \u0010\"\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0002\u0008\u0003\u0018\u00010#X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008$\u0010%R\u001a\u0010&\u001a\u00020\n8@X\u0081\u0004\u00a2\u0006\u000c\u0012\u0004\u0008\'\u0010\u0014\u001a\u0004\u0008(\u0010\u000f\u00a8\u00064"
    }
    d2 = {
        "Lcom/stripe/android/networking/FileUploadRequest;",
        "Lcom/stripe/android/networking/StripeRequest;",
        "fileParams",
        "Lcom/stripe/android/model/StripeFileParams;",
        "options",
        "Lcom/stripe/android/networking/ApiRequest$Options;",
        "appInfo",
        "Lcom/stripe/android/AppInfo;",
        "systemPropertySupplier",
        "Lkotlin/Function1;",
        "",
        "boundary",
        "(Lcom/stripe/android/model/StripeFileParams;Lcom/stripe/android/networking/ApiRequest$Options;Lcom/stripe/android/AppInfo;Lkotlin/jvm/functions/Function1;Ljava/lang/String;)V",
        "baseUrl",
        "getBaseUrl",
        "()Ljava/lang/String;",
        "contentType",
        "getContentType$stripe_release",
        "fileMetadata",
        "getFileMetadata$stripe_release$annotations",
        "()V",
        "getFileMetadata$stripe_release",
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
        "",
        "getParams",
        "()Ljava/util/Map;",
        "purposeContents",
        "getPurposeContents$stripe_release$annotations",
        "getPurposeContents$stripe_release",
        "writeBody",
        "",
        "outputStream",
        "Ljava/io/OutputStream;",
        "writeBody$stripe_release",
        "writeFile",
        "writeString",
        "writer",
        "Ljava/io/PrintWriter;",
        "contents",
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
.field public static final Companion:Lcom/stripe/android/networking/FileUploadRequest$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final LINE_BREAK:Ljava/lang/String; = "\r\n"


# instance fields
.field private final baseUrl:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final boundary:Ljava/lang/String;

.field private final fileParams:Lcom/stripe/android/model/StripeFileParams;

.field private final headersFactory:Lcom/stripe/android/networking/RequestHeadersFactory;
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


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/stripe/android/networking/FileUploadRequest$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/android/networking/FileUploadRequest$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/android/networking/FileUploadRequest;->Companion:Lcom/stripe/android/networking/FileUploadRequest$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/stripe/android/model/StripeFileParams;Lcom/stripe/android/networking/ApiRequest$Options;Lcom/stripe/android/AppInfo;Lkotlin/jvm/functions/Function1;Ljava/lang/String;)V
    .registers 15
    .param p1    # Lcom/stripe/android/model/StripeFileParams;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/stripe/android/networking/ApiRequest$Options;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/stripe/android/AppInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/android/model/StripeFileParams;",
            "Lcom/stripe/android/networking/ApiRequest$Options;",
            "Lcom/stripe/android/AppInfo;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "fileParams"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "options"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "systemPropertySupplier"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "boundary"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-direct {p0}, Lcom/stripe/android/networking/StripeRequest;-><init>()V

    iput-object p1, p0, Lcom/stripe/android/networking/FileUploadRequest;->fileParams:Lcom/stripe/android/model/StripeFileParams;

    iput-object p5, p0, Lcom/stripe/android/networking/FileUploadRequest;->boundary:Ljava/lang/String;

    .line 31
    sget-object p1, Lcom/stripe/android/networking/StripeRequest$Method;->POST:Lcom/stripe/android/networking/StripeRequest$Method;

    iput-object p1, p0, Lcom/stripe/android/networking/FileUploadRequest;->method:Lcom/stripe/android/networking/StripeRequest$Method;

    const-string p1, "https://files.stripe.com/v1/files"

    .line 32
    iput-object p1, p0, Lcom/stripe/android/networking/FileUploadRequest;->baseUrl:Ljava/lang/String;

    .line 34
    sget-object p1, Lcom/stripe/android/networking/StripeRequest$MimeType;->MultipartForm:Lcom/stripe/android/networking/StripeRequest$MimeType;

    iput-object p1, p0, Lcom/stripe/android/networking/FileUploadRequest;->mimeType:Lcom/stripe/android/networking/StripeRequest$MimeType;

    .line 35
    new-instance p1, Lcom/stripe/android/networking/RequestHeadersFactory$Api;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x34

    const/4 v8, 0x0

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v8}, Lcom/stripe/android/networking/RequestHeadersFactory$Api;-><init>(Lcom/stripe/android/networking/ApiRequest$Options;Lcom/stripe/android/AppInfo;Ljava/util/Locale;Lkotlin/jvm/functions/Function1;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast p1, Lcom/stripe/android/networking/RequestHeadersFactory;

    iput-object p1, p0, Lcom/stripe/android/networking/FileUploadRequest;->headersFactory:Lcom/stripe/android/networking/RequestHeadersFactory;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/stripe/android/model/StripeFileParams;Lcom/stripe/android/networking/ApiRequest$Options;Lcom/stripe/android/AppInfo;Lkotlin/jvm/functions/Function1;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 14

    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_7

    const/4 p3, 0x0

    .line 20
    check-cast p3, Lcom/stripe/android/AppInfo;

    :cond_7
    move-object v3, p3

    and-int/lit8 p3, p6, 0x8

    if-eqz p3, :cond_12

    .line 21
    sget-object p3, Lcom/stripe/android/networking/StripeRequest;->Companion:Lcom/stripe/android/networking/StripeRequest$Companion;

    invoke-virtual {p3}, Lcom/stripe/android/networking/StripeRequest$Companion;->getDEFAULT_SYSTEM_PROPERTY_SUPPLIER$stripe_release()Lkotlin/jvm/functions/Function1;

    move-result-object p4

    :cond_12
    move-object v4, p4

    and-int/lit8 p3, p6, 0x10

    if-eqz p3, :cond_1d

    .line 28
    sget-object p3, Lcom/stripe/android/networking/FileUploadRequest;->Companion:Lcom/stripe/android/networking/FileUploadRequest$Companion;

    invoke-static {p3}, Lcom/stripe/android/networking/FileUploadRequest$Companion;->access$createBoundary(Lcom/stripe/android/networking/FileUploadRequest$Companion;)Ljava/lang/String;

    move-result-object p5

    :cond_1d
    move-object v5, p5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/stripe/android/networking/FileUploadRequest;-><init>(Lcom/stripe/android/model/StripeFileParams;Lcom/stripe/android/networking/ApiRequest$Options;Lcom/stripe/android/AppInfo;Lkotlin/jvm/functions/Function1;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic getFileMetadata$stripe_release$annotations()V
    .registers 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    return-void
.end method

.method public static synthetic getPurposeContents$stripe_release$annotations()V
    .registers 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    return-void
.end method

.method private final writeFile(Ljava/io/OutputStream;)V
    .registers 6

    .line 61
    iget-object v0, p0, Lcom/stripe/android/networking/FileUploadRequest;->fileParams:Lcom/stripe/android/model/StripeFileParams;

    invoke-virtual {v0}, Lcom/stripe/android/model/StripeFileParams;->getFile$stripe_release()Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    check-cast v1, Ljava/io/InputStream;

    const/4 v0, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v1, p1, v0, v2, v3}, Lkotlin/io/ByteStreamsKt;->copyTo$default(Ljava/io/InputStream;Ljava/io/OutputStream;IILjava/lang/Object;)J

    return-void
.end method

.method private final writeString(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 9

    const-string v1, "\n"

    const-string v2, "\r\n"

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p2

    .line 56
    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    return-void
.end method


# virtual methods
.method public getBaseUrl()Ljava/lang/String;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 32
    iget-object v0, p0, Lcom/stripe/android/networking/FileUploadRequest;->baseUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getContentType$stripe_release()Ljava/lang/String;
    .registers 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/stripe/android/networking/FileUploadRequest;->getMimeType()Lcom/stripe/android/networking/StripeRequest$MimeType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/stripe/android/networking/StripeRequest$MimeType;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; boundary="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/stripe/android/networking/FileUploadRequest;->boundary:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getFileMetadata$stripe_release()Ljava/lang/String;
    .registers 5
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 72
    iget-object v0, p0, Lcom/stripe/android/networking/FileUploadRequest;->fileParams:Lcom/stripe/android/model/StripeFileParams;

    invoke-virtual {v0}, Lcom/stripe/android/model/StripeFileParams;->getFile$stripe_release()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 73
    invoke-static {v0}, Ljava/net/URLConnection;->guessContentTypeFromName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 74
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\n                --"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    iget-object v3, p0, Lcom/stripe/android/networking/FileUploadRequest;->boundary:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n                Content-Disposition: form-data; name=\"file\"; filename=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\"\n                Content-Type: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n                Content-Transfer-Encoding: binary\n\n\n            "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 81
    invoke-static {v0}, Lkotlin/text/StringsKt;->trimIndent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHeadersFactory()Lcom/stripe/android/networking/RequestHeadersFactory;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 35
    iget-object v0, p0, Lcom/stripe/android/networking/FileUploadRequest;->headersFactory:Lcom/stripe/android/networking/RequestHeadersFactory;

    return-object v0
.end method

.method public getMethod()Lcom/stripe/android/networking/StripeRequest$Method;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 31
    iget-object v0, p0, Lcom/stripe/android/networking/FileUploadRequest;->method:Lcom/stripe/android/networking/StripeRequest$Method;

    return-object v0
.end method

.method public getMimeType()Lcom/stripe/android/networking/StripeRequest$MimeType;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 34
    iget-object v0, p0, Lcom/stripe/android/networking/FileUploadRequest;->mimeType:Lcom/stripe/android/networking/StripeRequest$MimeType;

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

    .line 33
    iget-object v0, p0, Lcom/stripe/android/networking/FileUploadRequest;->params:Ljava/util/Map;

    return-object v0
.end method

.method public final getPurposeContents$stripe_release()Ljava/lang/String;
    .registers 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\n                --"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    iget-object v1, p0, Lcom/stripe/android/networking/FileUploadRequest;->boundary:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n                Content-Disposition: form-data; name=\"purpose\"\n\n                "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    iget-object v1, p0, Lcom/stripe/android/networking/FileUploadRequest;->fileParams:Lcom/stripe/android/model/StripeFileParams;

    invoke-virtual {v1}, Lcom/stripe/android/model/StripeFileParams;->getPurpose$stripe_release()Lcom/stripe/android/model/StripeFilePurpose;

    move-result-object v1

    invoke-virtual {v1}, Lcom/stripe/android/model/StripeFilePurpose;->getCode$stripe_release()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n\n            "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 93
    invoke-static {v0}, Lkotlin/text/StringsKt;->trimIndent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeBody$stripe_release(Ljava/io/OutputStream;)V
    .registers 9
    .param p1    # Ljava/io/OutputStream;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "--"

    const-string v1, "outputStream"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    sget-object v1, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    new-instance v2, Ljava/io/OutputStreamWriter;

    invoke-direct {v2, p1, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    check-cast v2, Ljava/io/Closeable;

    const/4 v1, 0x0

    move-object v3, v1

    check-cast v3, Ljava/lang/Throwable;

    :try_start_14
    move-object v4, v2

    check-cast v4, Ljava/io/OutputStreamWriter;

    .line 43
    new-instance v5, Ljava/io/PrintWriter;

    check-cast v4, Ljava/io/Writer;

    const/4 v6, 0x1

    invoke-direct {v5, v4, v6}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    check-cast v5, Ljava/io/Closeable;

    check-cast v1, Ljava/lang/Throwable;
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_23} :catch_6c
    .catchall {:try_start_14 .. :try_end_23} :catchall_6a

    :try_start_23
    move-object v4, v5

    check-cast v4, Ljava/io/PrintWriter;

    .line 44
    invoke-virtual {p0}, Lcom/stripe/android/networking/FileUploadRequest;->getPurposeContents$stripe_release()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v4, v6}, Lcom/stripe/android/networking/FileUploadRequest;->writeString(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 45
    invoke-virtual {p0}, Lcom/stripe/android/networking/FileUploadRequest;->getFileMetadata$stripe_release()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v4, v6}, Lcom/stripe/android/networking/FileUploadRequest;->writeString(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 46
    invoke-direct {p0, p1}, Lcom/stripe/android/networking/FileUploadRequest;->writeFile(Ljava/io/OutputStream;)V

    const-string p1, "\r\n"

    .line 48
    invoke-virtual {v4, p1}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 49
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/stripe/android/networking/FileUploadRequest;->boundary:Ljava/lang/String;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 50
    invoke-virtual {v4}, Ljava/io/PrintWriter;->flush()V

    .line 51
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_58
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_58} :catch_63
    .catchall {:try_start_23 .. :try_end_58} :catchall_61

    .line 43
    :try_start_58
    invoke-static {v5, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 52
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_5d
    .catch Ljava/lang/Throwable; {:try_start_58 .. :try_end_5d} :catch_6c
    .catchall {:try_start_58 .. :try_end_5d} :catchall_6a

    .line 42
    invoke-static {v2, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-void

    :catchall_61
    move-exception p1

    goto :goto_66

    :catch_63
    move-exception p1

    move-object v1, p1

    .line 43
    :try_start_65
    throw v1
    :try_end_66
    .catchall {:try_start_65 .. :try_end_66} :catchall_61

    :goto_66
    :try_start_66
    invoke-static {v5, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p1
    :try_end_6a
    .catch Ljava/lang/Throwable; {:try_start_66 .. :try_end_6a} :catch_6c
    .catchall {:try_start_66 .. :try_end_6a} :catchall_6a

    :catchall_6a
    move-exception p1

    goto :goto_6f

    :catch_6c
    move-exception p1

    move-object v3, p1

    .line 42
    :try_start_6e
    throw v3
    :try_end_6f
    .catchall {:try_start_6e .. :try_end_6f} :catchall_6a

    :goto_6f
    invoke-static {v2, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p1
.end method
