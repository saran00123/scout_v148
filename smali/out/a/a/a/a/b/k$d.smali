.class public final La/a/a/a/b/k$d;
.super La/a/a/a/b/k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/a/a/a/b/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# static fields
.field public static final b:Lcom/stripe/android/stripe3ds2/init/Warning;


# direct methods
.method public static constructor <clinit>()V
    .registers 4

    new-instance v0, Lcom/stripe/android/stripe3ds2/init/Warning;

    sget-object v1, Lcom/stripe/android/stripe3ds2/init/Warning$Severity;->HIGH:Lcom/stripe/android/stripe3ds2/init/Warning$Severity;

    const-string v2, "SW02"

    const-string v3, "The integrity of the SDK has been tampered."

    invoke-direct {v0, v2, v3, v1}, Lcom/stripe/android/stripe3ds2/init/Warning;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/stripe/android/stripe3ds2/init/Warning$Severity;)V

    sput-object v0, La/a/a/a/b/k$d;->b:Lcom/stripe/android/stripe3ds2/init/Warning;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    sget-object v0, La/a/a/a/b/k$d;->b:Lcom/stripe/android/stripe3ds2/init/Warning;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, La/a/a/a/b/k;-><init>(Lcom/stripe/android/stripe3ds2/init/Warning;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public a()Z
    .registers 5

    .line 1
    const-class v0, Lcom/stripe/android/stripe3ds2/service/StripeThreeDs2ServiceImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    array-length v0, v0

    const/16 v1, 0xd

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_f

    move v0, v2

    goto :goto_10

    :cond_f
    move v0, v3

    :goto_10
    if-eqz v0, :cond_22

    .line 2
    const-class v0, Lcom/stripe/android/stripe3ds2/service/StripeThreeDs2ServiceImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    array-length v0, v0

    if-ne v0, v1, :cond_1d

    move v0, v2

    goto :goto_1e

    :cond_1d
    move v0, v3

    :goto_1e
    if-nez v0, :cond_21

    goto :goto_22

    :cond_21
    move v2, v3

    :cond_22
    :goto_22
    return v2
.end method
