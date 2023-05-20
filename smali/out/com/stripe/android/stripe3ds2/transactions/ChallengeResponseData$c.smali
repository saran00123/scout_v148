.class public final enum Lcom/stripe/android/stripe3ds2/transactions/ChallengeResponseData$c;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/android/stripe3ds2/transactions/ChallengeResponseData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/android/stripe3ds2/transactions/ChallengeResponseData$c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/stripe/android/stripe3ds2/transactions/ChallengeResponseData$c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum d:Lcom/stripe/android/stripe3ds2/transactions/ChallengeResponseData$c;

.field public static final enum e:Lcom/stripe/android/stripe3ds2/transactions/ChallengeResponseData$c;

.field public static final enum f:Lcom/stripe/android/stripe3ds2/transactions/ChallengeResponseData$c;

.field public static final enum g:Lcom/stripe/android/stripe3ds2/transactions/ChallengeResponseData$c;

.field public static final enum h:Lcom/stripe/android/stripe3ds2/transactions/ChallengeResponseData$c;

.field public static final synthetic i:[Lcom/stripe/android/stripe3ds2/transactions/ChallengeResponseData$c;

.field public static final j:Lcom/stripe/android/stripe3ds2/transactions/ChallengeResponseData$c$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final a:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Lcom/ults/listeners/ChallengeType;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final c:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 14

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/stripe/android/stripe3ds2/transactions/ChallengeResponseData$c;

    new-instance v7, Lcom/stripe/android/stripe3ds2/transactions/ChallengeResponseData$c;

    sget-object v5, Lcom/ults/listeners/ChallengeType;->SINGLE_TEXT_INPUT:Lcom/ults/listeners/ChallengeType;

    const-string v2, "TEXT"

    const/4 v3, 0x0

    const-string v4, "01"

    const/4 v6, 0x1

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/stripe/android/stripe3ds2/transactions/ChallengeResponseData$c;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/ults/listeners/ChallengeType;Z)V

    sput-object v7, Lcom/stripe/android/stripe3ds2/transactions/ChallengeResponseData$c;->d:Lcom/stripe/android/stripe3ds2/transactions/ChallengeResponseData$c;

    const/4 v1, 0x0

    aput-object v7, v0, v1

    new-instance v1, Lcom/stripe/android/stripe3ds2/transactions/ChallengeResponseData$c;

    sget-object v12, Lcom/ults/listeners/ChallengeType;->SINGLE_SELECT:Lcom/ults/listeners/ChallengeType;

    const-string v9, "SINGLE_SELECT"

    const/4 v10, 0x1

    const-string v11, "02"

    const/4 v13, 0x1

    move-object v8, v1

    invoke-direct/range {v8 .. v13}, Lcom/stripe/android/stripe3ds2/transactions/ChallengeResponseData$c;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/ults/listeners/ChallengeType;Z)V

    sput-object v1, Lcom/stripe/android/stripe3ds2/transactions/ChallengeResponseData$c;->e:Lcom/stripe/android/stripe3ds2/transactions/ChallengeResponseData$c;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lcom/stripe/android/stripe3ds2/transactions/ChallengeResponseData$c;

    sget-object v7, Lcom/ults/listeners/ChallengeType;->MULTI_SELECT:Lcom/ults/listeners/ChallengeType;

    const-string v4, "MULTI_SELECT"

    const/4 v5, 0x2

    const-string v6, "03"

    const/4 v8, 0x1

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Lcom/stripe/android/stripe3ds2/transactions/ChallengeResponseData$c;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/ults/listeners/ChallengeType;Z)V

    sput-object v1, Lcom/stripe/android/stripe3ds2/transactions/ChallengeResponseData$c;->f:Lcom/stripe/android/stripe3ds2/transactions/ChallengeResponseData$c;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Lcom/stripe/android/stripe3ds2/transactions/ChallengeResponseData$c;

    sget-object v7, Lcom/ults/listeners/ChallengeType;->OUT_OF_BAND:Lcom/ults/listeners/ChallengeType;

    const-string v4, "OOB"

    const/4 v5, 0x3

    const-string v6, "04"

    const/4 v8, 0x0

    move-object v3, v1

    .line 1
    invoke-direct/range {v3 .. v8}, Lcom/stripe/android/stripe3ds2/transactions/ChallengeResponseData$c;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/ults/listeners/ChallengeType;Z)V

    .line 2
    sput-object v1, Lcom/stripe/android/stripe3ds2/transactions/ChallengeResponseData$c;->g:Lcom/stripe/android/stripe3ds2/transactions/ChallengeResponseData$c;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-instance v1, Lcom/stripe/android/stripe3ds2/transactions/ChallengeResponseData$c;

    sget-object v7, Lcom/ults/listeners/ChallengeType;->HTML_UI:Lcom/ults/listeners/ChallengeType;

    const-string v4, "HTML"

    const/4 v5, 0x4

    const-string v6, "05"

    move-object v3, v1

    .line 3
    invoke-direct/range {v3 .. v8}, Lcom/stripe/android/stripe3ds2/transactions/ChallengeResponseData$c;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/ults/listeners/ChallengeType;Z)V

    .line 4
    sput-object v1, Lcom/stripe/android/stripe3ds2/transactions/ChallengeResponseData$c;->h:Lcom/stripe/android/stripe3ds2/transactions/ChallengeResponseData$c;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sput-object v0, Lcom/stripe/android/stripe3ds2/transactions/ChallengeResponseData$c;->i:[Lcom/stripe/android/stripe3ds2/transactions/ChallengeResponseData$c;

    new-instance v0, Lcom/stripe/android/stripe3ds2/transactions/ChallengeResponseData$c$a;

    .line 5
    invoke-direct {v0}, Lcom/stripe/android/stripe3ds2/transactions/ChallengeResponseData$c$a;-><init>()V

    .line 6
    sput-object v0, Lcom/stripe/android/stripe3ds2/transactions/ChallengeResponseData$c;->j:Lcom/stripe/android/stripe3ds2/transactions/ChallengeResponseData$c$a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Lcom/ults/listeners/ChallengeType;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/ults/listeners/ChallengeType;",
            "Z)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/stripe/android/stripe3ds2/transactions/ChallengeResponseData$c;->a:Ljava/lang/String;

    iput-object p4, p0, Lcom/stripe/android/stripe3ds2/transactions/ChallengeResponseData$c;->b:Lcom/ults/listeners/ChallengeType;

    iput-boolean p5, p0, Lcom/stripe/android/stripe3ds2/transactions/ChallengeResponseData$c;->c:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/stripe/android/stripe3ds2/transactions/ChallengeResponseData$c;
    .registers 2

    const-class v0, Lcom/stripe/android/stripe3ds2/transactions/ChallengeResponseData$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/stripe/android/stripe3ds2/transactions/ChallengeResponseData$c;

    return-object p0
.end method

.method public static values()[Lcom/stripe/android/stripe3ds2/transactions/ChallengeResponseData$c;
    .registers 1

    sget-object v0, Lcom/stripe/android/stripe3ds2/transactions/ChallengeResponseData$c;->i:[Lcom/stripe/android/stripe3ds2/transactions/ChallengeResponseData$c;

    invoke-virtual {v0}, [Lcom/stripe/android/stripe3ds2/transactions/ChallengeResponseData$c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/stripe/android/stripe3ds2/transactions/ChallengeResponseData$c;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/stripe/android/stripe3ds2/transactions/ChallengeResponseData$c;->a:Ljava/lang/String;

    return-object v0
.end method
