.class public final enum La/a/a/a/e/d0;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La/a/a/a/e/d0$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "La/a/a/a/e/d0;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic b:[La/a/a/a/e/d0;

.field public static final c:La/a/a/a/e/d0$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final a:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 5

    const/16 v0, 0x8

    new-array v0, v0, [La/a/a/a/e/d0;

    new-instance v1, La/a/a/a/e/d0;

    const/4 v2, 0x0

    const-string v3, "VerificationSuccessful"

    const-string v4, "Y"

    invoke-direct {v1, v3, v2, v4}, La/a/a/a/e/d0;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    aput-object v1, v0, v2

    new-instance v1, La/a/a/a/e/d0;

    const/4 v2, 0x1

    const-string v3, "VerificationDenied"

    const-string v4, "N"

    invoke-direct {v1, v3, v2, v4}, La/a/a/a/e/d0;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    aput-object v1, v0, v2

    new-instance v1, La/a/a/a/e/d0;

    const/4 v2, 0x2

    const-string v3, "VerificationNotPerformed"

    const-string v4, "U"

    invoke-direct {v1, v3, v2, v4}, La/a/a/a/e/d0;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    aput-object v1, v0, v2

    new-instance v1, La/a/a/a/e/d0;

    const/4 v2, 0x3

    const-string v3, "VerificationAttempted"

    const-string v4, "A"

    invoke-direct {v1, v3, v2, v4}, La/a/a/a/e/d0;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    aput-object v1, v0, v2

    new-instance v1, La/a/a/a/e/d0;

    const/4 v2, 0x4

    const-string v3, "ChallengeAdditionalAuth"

    const-string v4, "C"

    invoke-direct {v1, v3, v2, v4}, La/a/a/a/e/d0;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    aput-object v1, v0, v2

    new-instance v1, La/a/a/a/e/d0;

    const/4 v2, 0x5

    const-string v3, "ChallengeDecoupledAuth"

    const-string v4, "D"

    invoke-direct {v1, v3, v2, v4}, La/a/a/a/e/d0;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    aput-object v1, v0, v2

    new-instance v1, La/a/a/a/e/d0;

    const/4 v2, 0x6

    const-string v3, "VerificationRejected"

    const-string v4, "R"

    invoke-direct {v1, v3, v2, v4}, La/a/a/a/e/d0;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    aput-object v1, v0, v2

    new-instance v1, La/a/a/a/e/d0;

    const/4 v2, 0x7

    const-string v3, "InformationOnly"

    const-string v4, "I"

    invoke-direct {v1, v3, v2, v4}, La/a/a/a/e/d0;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    aput-object v1, v0, v2

    sput-object v0, La/a/a/a/e/d0;->b:[La/a/a/a/e/d0;

    new-instance v0, La/a/a/a/e/d0$a;

    .line 1
    invoke-direct {v0}, La/a/a/a/e/d0$a;-><init>()V

    .line 2
    sput-object v0, La/a/a/a/e/d0;->c:La/a/a/a/e/d0$a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, La/a/a/a/e/d0;->a:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)La/a/a/a/e/d0;
    .registers 2

    const-class v0, La/a/a/a/e/d0;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, La/a/a/a/e/d0;

    return-object p0
.end method

.method public static values()[La/a/a/a/e/d0;
    .registers 1

    sget-object v0, La/a/a/a/e/d0;->b:[La/a/a/a/e/d0;

    invoke-virtual {v0}, [La/a/a/a/e/d0;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [La/a/a/a/e/d0;

    return-object v0
.end method
