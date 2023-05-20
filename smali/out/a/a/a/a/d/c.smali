.class public final enum La/a/a/a/d/c;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La/a/a/a/d/c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "La/a/a/a/d/c;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic e:[La/a/a/a/d/c;

.field public static final f:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final g:La/a/a/a/d/c$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:La/a/a/a/d/a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final c:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final d:Lcom/nimbusds/jose/jwk/KeyUse;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 17

    const/4 v0, 0x6

    new-array v0, v0, [La/a/a/a/d/c;

    new-instance v8, La/a/a/a/d/c;

    const-string v1, "F000000000"

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    sget-object v16, La/a/a/a/d/a;->c:La/a/a/a/d/a;

    .line 1
    sget-object v7, Lcom/nimbusds/jose/jwk/KeyUse;->SIGNATURE:Lcom/nimbusds/jose/jwk/KeyUse;

    const-string v2, "TestRsa"

    const/4 v3, 0x0

    const-string v6, "ds-test-rsa.txt"

    move-object v1, v8

    move-object/from16 v5, v16

    invoke-direct/range {v1 .. v7}, La/a/a/a/d/c;-><init>(Ljava/lang/String;ILjava/util/List;La/a/a/a/d/a;Ljava/lang/String;Lcom/nimbusds/jose/jwk/KeyUse;)V

    const/4 v1, 0x0

    aput-object v8, v0, v1

    .line 2
    new-instance v1, La/a/a/a/d/c;

    const-string v2, "F000000001"

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v12

    sget-object v13, La/a/a/a/d/a;->b:La/a/a/a/d/a;

    .line 3
    sget-object v15, Lcom/nimbusds/jose/jwk/KeyUse;->SIGNATURE:Lcom/nimbusds/jose/jwk/KeyUse;

    const-string v10, "TestEc"

    const/4 v11, 0x1

    const-string v14, "ds-test-ec.txt"

    move-object v9, v1

    invoke-direct/range {v9 .. v15}, La/a/a/a/d/c;-><init>(Ljava/lang/String;ILjava/util/List;La/a/a/a/d/a;Ljava/lang/String;Lcom/nimbusds/jose/jwk/KeyUse;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 4
    new-instance v1, La/a/a/a/d/c;

    const-string v2, "A000000003"

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v12

    .line 5
    sget-object v15, Lcom/nimbusds/jose/jwk/KeyUse;->SIGNATURE:Lcom/nimbusds/jose/jwk/KeyUse;

    const-string v10, "Visa"

    const/4 v11, 0x2

    const-string v14, "ds-visa.crt"

    move-object v9, v1

    move-object/from16 v13, v16

    invoke-direct/range {v9 .. v15}, La/a/a/a/d/c;-><init>(Ljava/lang/String;ILjava/util/List;La/a/a/a/d/a;Ljava/lang/String;Lcom/nimbusds/jose/jwk/KeyUse;)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 6
    new-instance v1, La/a/a/a/d/c;

    const-string v2, "A000000004"

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v12

    .line 7
    sget-object v15, Lcom/nimbusds/jose/jwk/KeyUse;->SIGNATURE:Lcom/nimbusds/jose/jwk/KeyUse;

    const-string v10, "Mastercard"

    const/4 v11, 0x3

    const-string v14, "ds-mastercard.crt"

    move-object v9, v1

    invoke-direct/range {v9 .. v15}, La/a/a/a/d/c;-><init>(Ljava/lang/String;ILjava/util/List;La/a/a/a/d/a;Ljava/lang/String;Lcom/nimbusds/jose/jwk/KeyUse;)V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 8
    new-instance v1, La/a/a/a/d/c;

    const-string v2, "A000000025"

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v12

    .line 9
    sget-object v15, Lcom/nimbusds/jose/jwk/KeyUse;->SIGNATURE:Lcom/nimbusds/jose/jwk/KeyUse;

    const-string v10, "Amex"

    const/4 v11, 0x4

    const-string v14, "ds-amex.pem"

    move-object v9, v1

    invoke-direct/range {v9 .. v15}, La/a/a/a/d/c;-><init>(Ljava/lang/String;ILjava/util/List;La/a/a/a/d/a;Ljava/lang/String;Lcom/nimbusds/jose/jwk/KeyUse;)V

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 10
    new-instance v1, La/a/a/a/d/c;

    const-string v2, "A000000152"

    const-string v3, "A000000324"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v12

    const-string v10, "Discover"

    const/4 v11, 0x5

    const-string v14, "ds-discover.cer"

    const/4 v15, 0x0

    move-object v9, v1

    invoke-direct/range {v9 .. v15}, La/a/a/a/d/c;-><init>(Ljava/lang/String;ILjava/util/List;La/a/a/a/d/a;Ljava/lang/String;Lcom/nimbusds/jose/jwk/KeyUse;)V

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sput-object v0, La/a/a/a/d/c;->e:[La/a/a/a/d/c;

    new-instance v0, La/a/a/a/d/c$a;

    .line 11
    invoke-direct {v0}, La/a/a/a/d/c$a;-><init>()V

    .line 12
    sput-object v0, La/a/a/a/d/c;->g:La/a/a/a/d/c$a;

    const-string v0, ".crt"

    const-string v1, ".cer"

    const-string v2, ".pem"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, La/a/a/a/d/c;->f:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/util/List;La/a/a/a/d/a;Ljava/lang/String;Lcom/nimbusds/jose/jwk/KeyUse;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "La/a/a/a/d/a;",
            "Ljava/lang/String;",
            "Lcom/nimbusds/jose/jwk/KeyUse;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, La/a/a/a/d/c;->a:Ljava/util/List;

    iput-object p4, p0, La/a/a/a/d/c;->b:La/a/a/a/d/a;

    iput-object p5, p0, La/a/a/a/d/c;->c:Ljava/lang/String;

    iput-object p6, p0, La/a/a/a/d/c;->d:Lcom/nimbusds/jose/jwk/KeyUse;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)La/a/a/a/d/c;
    .registers 2

    const-class v0, La/a/a/a/d/c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, La/a/a/a/d/c;

    return-object p0
.end method

.method public static values()[La/a/a/a/d/c;
    .registers 1

    sget-object v0, La/a/a/a/d/c;->e:[La/a/a/a/d/c;

    invoke-virtual {v0}, [La/a/a/a/d/c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [La/a/a/a/d/c;

    return-object v0
.end method


# virtual methods
.method public final a()Z
    .registers 7

    sget-object v0, La/a/a/a/d/c;->f:Ljava/util/Set;

    instance-of v1, v0, Ljava/util/Collection;

    const/4 v2, 0x0

    if-eqz v1, :cond_e

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_e

    goto :goto_29

    :cond_e
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_29

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v3, p0, La/a/a/a/d/c;->c:Ljava/lang/String;

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static {v3, v1, v2, v4, v5}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    const/4 v2, 0x1

    :cond_29
    :goto_29
    return v2
.end method
