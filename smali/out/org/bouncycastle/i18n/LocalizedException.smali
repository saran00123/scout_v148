.class public Lorg/bouncycastle/i18n/LocalizedException;
.super Ljava/lang/Exception;


# instance fields
.field private cause:Ljava/lang/Throwable;

.field protected message:Lorg/bouncycastle/i18n/ErrorBundle;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/i18n/ErrorBundle;)V
    .registers 3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/i18n/ErrorBundle;->getText(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lorg/bouncycastle/i18n/LocalizedException;->message:Lorg/bouncycastle/i18n/ErrorBundle;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/i18n/ErrorBundle;Ljava/lang/Throwable;)V
    .registers 4

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/i18n/ErrorBundle;->getText(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lorg/bouncycastle/i18n/LocalizedException;->message:Lorg/bouncycastle/i18n/ErrorBundle;

    iput-object p2, p0, Lorg/bouncycastle/i18n/LocalizedException;->cause:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public getCause()Ljava/lang/Throwable;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/i18n/LocalizedException;->cause:Ljava/lang/Throwable;

    return-object v0
.end method

.method public getErrorMessage()Lorg/bouncycastle/i18n/ErrorBundle;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/i18n/LocalizedException;->message:Lorg/bouncycastle/i18n/ErrorBundle;

    return-object v0
.end method