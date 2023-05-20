.class public final enum La/a/a/a/h/z$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/a/a/a/h/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La/a/a/a/h/z$a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "La/a/a/a/h/z$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic d:[La/a/a/a/h/z$a;

.field public static final e:La/a/a/a/h/z$a$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final a:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:I

.field public final c:I


# direct methods
.method public static constructor <clinit>()V
    .registers 14

    const/4 v0, 0x4

    new-array v0, v0, [La/a/a/a/h/z$a;

    new-instance v7, La/a/a/a/h/z$a;

    sget v5, Lcom/stripe/android/stripe3ds2/R$drawable;->ic_visa:I

    sget v6, Lcom/stripe/android/stripe3ds2/R$string;->stripe_3ds2_brand_visa:I

    const-string v2, "VISA"

    const/4 v3, 0x0

    const-string/jumbo v4, "visa"

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, La/a/a/a/h/z$a;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    const/4 v1, 0x0

    aput-object v7, v0, v1

    new-instance v1, La/a/a/a/h/z$a;

    sget v12, Lcom/stripe/android/stripe3ds2/R$drawable;->ic_mastercard:I

    sget v13, Lcom/stripe/android/stripe3ds2/R$string;->stripe_3ds2_brand_mastercard:I

    const-string v9, "MASTERCARD"

    const/4 v10, 0x1

    const-string v11, "mastercard"

    move-object v8, v1

    invoke-direct/range {v8 .. v13}, La/a/a/a/h/z$a;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, La/a/a/a/h/z$a;

    sget v7, Lcom/stripe/android/stripe3ds2/R$drawable;->ic_amex:I

    sget v8, Lcom/stripe/android/stripe3ds2/R$string;->stripe_3ds2_brand_amex:I

    const-string v4, "AMEX"

    const/4 v5, 0x2

    const-string v6, "american_express"

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, La/a/a/a/h/z$a;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, La/a/a/a/h/z$a;

    sget v7, Lcom/stripe/android/stripe3ds2/R$drawable;->ic_discover:I

    sget v8, Lcom/stripe/android/stripe3ds2/R$string;->stripe_3ds2_brand_discover:I

    const-string v4, "DISCOVER"

    const/4 v5, 0x3

    const-string v6, "discover"

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, La/a/a/a/h/z$a;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sput-object v0, La/a/a/a/h/z$a;->d:[La/a/a/a/h/z$a;

    new-instance v0, La/a/a/a/h/z$a$a;

    .line 1
    invoke-direct {v0}, La/a/a/a/h/z$a$a;-><init>()V

    .line 2
    sput-object v0, La/a/a/a/h/z$a;->e:La/a/a/a/h/z$a$a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;II)V
    .registers 6
    .param p2    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, La/a/a/a/h/z$a;->a:Ljava/lang/String;

    iput p4, p0, La/a/a/a/h/z$a;->b:I

    iput p5, p0, La/a/a/a/h/z$a;->c:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)La/a/a/a/h/z$a;
    .registers 2

    const-class v0, La/a/a/a/h/z$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, La/a/a/a/h/z$a;

    return-object p0
.end method

.method public static values()[La/a/a/a/h/z$a;
    .registers 1

    sget-object v0, La/a/a/a/h/z$a;->d:[La/a/a/a/h/z$a;

    invoke-virtual {v0}, [La/a/a/a/h/z$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [La/a/a/a/h/z$a;

    return-object v0
.end method
