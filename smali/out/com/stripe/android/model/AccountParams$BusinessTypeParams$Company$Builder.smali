.class public final Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company$Builder;
.super Ljava/lang/Object;
.source "AccountParams.kt"

# interfaces
.implements Lcom/stripe/android/ObjectBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/stripe/android/ObjectBuilder<",
        "Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0011\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u0018\u001a\u00020\u0002H\u0016J\u0010\u0010\u0019\u001a\u00020\u00002\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u001a\u001a\u00020\u00002\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007J\u0010\u0010\u001b\u001a\u00020\u00002\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007J\u0015\u0010\u001c\u001a\u00020\u00002\u0008\u0010\t\u001a\u0004\u0018\u00010\n\u00a2\u0006\u0002\u0010\u001dJ\u0015\u0010\u001e\u001a\u00020\u00002\u0008\u0010\u000c\u001a\u0004\u0018\u00010\n\u00a2\u0006\u0002\u0010\u001dJ\u0010\u0010\u001f\u001a\u00020\u00002\u0008\u0010\r\u001a\u0004\u0018\u00010\u000eJ\u0010\u0010 \u001a\u00020\u00002\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u000eJ\u0010\u0010!\u001a\u00020\u00002\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u000eJ\u0015\u0010\"\u001a\u00020\u00002\u0008\u0010\u0011\u001a\u0004\u0018\u00010\n\u00a2\u0006\u0002\u0010\u001dJ\u0010\u0010#\u001a\u00020\u00002\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u000eJ\u0010\u0010$\u001a\u00020\u00002\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u000eJ\u0010\u0010%\u001a\u00020\u00002\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u000eJ\u0010\u0010&\u001a\u00020\u00002\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u000eJ\u0010\u0010\'\u001a\u00020\u00002\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0017R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0008\u001a\u0004\u0018\u00010\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\u000bR\u0012\u0010\u000c\u001a\u0004\u0018\u00010\nX\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\u000bR\u0010\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0011\u001a\u0004\u0018\u00010\nX\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\u000bR\u0010\u0010\u0012\u001a\u0004\u0018\u00010\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0013\u001a\u0004\u0018\u00010\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0014\u001a\u0004\u0018\u00010\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0015\u001a\u0004\u0018\u00010\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0016\u001a\u0004\u0018\u00010\u0017X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006("
    }
    d2 = {
        "Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company$Builder;",
        "Lcom/stripe/android/ObjectBuilder;",
        "Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company;",
        "()V",
        "address",
        "Lcom/stripe/android/model/Address;",
        "addressKana",
        "Lcom/stripe/android/model/AddressJapanParams;",
        "addressKanji",
        "directorsProvided",
        "",
        "Ljava/lang/Boolean;",
        "executivesProvided",
        "name",
        "",
        "nameKana",
        "nameKanji",
        "ownersProvided",
        "phone",
        "taxId",
        "taxIdRegistrar",
        "vatId",
        "verification",
        "Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company$Verification;",
        "build",
        "setAddress",
        "setAddressKana",
        "setAddressKanji",
        "setDirectorsProvided",
        "(Ljava/lang/Boolean;)Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company$Builder;",
        "setExecutivesProvided",
        "setName",
        "setNameKana",
        "setNameKanji",
        "setOwnersProvided",
        "setPhone",
        "setTaxId",
        "setTaxIdRegistrar",
        "setVatId",
        "setVerification",
        "stripe_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field private address:Lcom/stripe/android/model/Address;

.field private addressKana:Lcom/stripe/android/model/AddressJapanParams;

.field private addressKanji:Lcom/stripe/android/model/AddressJapanParams;

.field private directorsProvided:Ljava/lang/Boolean;

.field private executivesProvided:Ljava/lang/Boolean;

.field private name:Ljava/lang/String;

.field private nameKana:Ljava/lang/String;

.field private nameKanji:Ljava/lang/String;

.field private ownersProvided:Ljava/lang/Boolean;

.field private phone:Ljava/lang/String;

.field private taxId:Ljava/lang/String;

.field private taxIdRegistrar:Ljava/lang/String;

.field private vatId:Ljava/lang/String;

.field private verification:Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company$Verification;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 258
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company;
    .registers 18
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    move-object/from16 v0, p0

    .line 415
    new-instance v16, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company;

    .line 416
    iget-object v2, v0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company$Builder;->address:Lcom/stripe/android/model/Address;

    .line 417
    iget-object v3, v0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company$Builder;->addressKana:Lcom/stripe/android/model/AddressJapanParams;

    .line 418
    iget-object v4, v0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company$Builder;->addressKanji:Lcom/stripe/android/model/AddressJapanParams;

    .line 419
    iget-object v5, v0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company$Builder;->directorsProvided:Ljava/lang/Boolean;

    .line 420
    iget-object v6, v0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company$Builder;->executivesProvided:Ljava/lang/Boolean;

    .line 421
    iget-object v7, v0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company$Builder;->name:Ljava/lang/String;

    .line 422
    iget-object v8, v0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company$Builder;->nameKana:Ljava/lang/String;

    .line 423
    iget-object v9, v0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company$Builder;->nameKanji:Ljava/lang/String;

    .line 424
    iget-object v10, v0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company$Builder;->ownersProvided:Ljava/lang/Boolean;

    .line 425
    iget-object v11, v0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company$Builder;->phone:Ljava/lang/String;

    .line 426
    iget-object v12, v0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company$Builder;->taxId:Ljava/lang/String;

    .line 427
    iget-object v13, v0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company$Builder;->taxIdRegistrar:Ljava/lang/String;

    .line 428
    iget-object v14, v0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company$Builder;->vatId:Ljava/lang/String;

    .line 429
    iget-object v15, v0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company$Builder;->verification:Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company$Verification;

    move-object/from16 v1, v16

    .line 415
    invoke-direct/range {v1 .. v15}, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company;-><init>(Lcom/stripe/android/model/Address;Lcom/stripe/android/model/AddressJapanParams;Lcom/stripe/android/model/AddressJapanParams;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company$Verification;)V

    return-object v16
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .registers 2

    .line 258
    invoke-virtual {p0}, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company$Builder;->build()Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company;

    move-result-object v0

    return-object v0
.end method

.method public final setAddress(Lcom/stripe/android/model/Address;)Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company$Builder;
    .registers 3
    .param p1    # Lcom/stripe/android/model/Address;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 279
    move-object v0, p0

    check-cast v0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company$Builder;

    .line 280
    iput-object p1, v0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company$Builder;->address:Lcom/stripe/android/model/Address;

    return-object v0
.end method

.method public final setAddressKana(Lcom/stripe/android/model/AddressJapanParams;)Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company$Builder;
    .registers 3
    .param p1    # Lcom/stripe/android/model/AddressJapanParams;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 288
    move-object v0, p0

    check-cast v0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company$Builder;

    .line 289
    iput-object p1, v0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company$Builder;->addressKana:Lcom/stripe/android/model/AddressJapanParams;

    return-object v0
.end method

.method public final setAddressKanji(Lcom/stripe/android/model/AddressJapanParams;)Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company$Builder;
    .registers 3
    .param p1    # Lcom/stripe/android/model/AddressJapanParams;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 297
    move-object v0, p0

    check-cast v0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company$Builder;

    .line 298
    iput-object p1, v0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company$Builder;->addressKanji:Lcom/stripe/android/model/AddressJapanParams;

    return-object v0
.end method

.method public final setDirectorsProvided(Ljava/lang/Boolean;)Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company$Builder;
    .registers 3
    .param p1    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 311
    move-object v0, p0

    check-cast v0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company$Builder;

    .line 312
    iput-object p1, v0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company$Builder;->directorsProvided:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final setExecutivesProvided(Ljava/lang/Boolean;)Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company$Builder;
    .registers 3
    .param p1    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 323
    move-object v0, p0

    check-cast v0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company$Builder;

    .line 324
    iput-object p1, v0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company$Builder;->executivesProvided:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final setName(Ljava/lang/String;)Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company$Builder;
    .registers 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 332
    move-object v0, p0

    check-cast v0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company$Builder;

    .line 333
    iput-object p1, v0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company$Builder;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final setNameKana(Ljava/lang/String;)Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company$Builder;
    .registers 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 341
    move-object v0, p0

    check-cast v0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company$Builder;

    .line 342
    iput-object p1, v0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company$Builder;->nameKana:Ljava/lang/String;

    return-object v0
.end method

.method public final setNameKanji(Ljava/lang/String;)Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company$Builder;
    .registers 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 350
    move-object v0, p0

    check-cast v0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company$Builder;

    .line 351
    iput-object p1, v0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company$Builder;->nameKanji:Ljava/lang/String;

    return-object v0
.end method

.method public final setOwnersProvided(Ljava/lang/Boolean;)Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company$Builder;
    .registers 3
    .param p1    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 362
    move-object v0, p0

    check-cast v0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company$Builder;

    .line 363
    iput-object p1, v0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company$Builder;->ownersProvided:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final setPhone(Ljava/lang/String;)Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company$Builder;
    .registers 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 371
    move-object v0, p0

    check-cast v0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company$Builder;

    .line 372
    iput-object p1, v0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company$Builder;->phone:Ljava/lang/String;

    return-object v0
.end method

.method public final setTaxId(Ljava/lang/String;)Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company$Builder;
    .registers 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 382
    move-object v0, p0

    check-cast v0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company$Builder;

    .line 383
    iput-object p1, v0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company$Builder;->taxId:Ljava/lang/String;

    return-object v0
.end method

.method public final setTaxIdRegistrar(Ljava/lang/String;)Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company$Builder;
    .registers 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 392
    move-object v0, p0

    check-cast v0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company$Builder;

    .line 393
    iput-object p1, v0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company$Builder;->taxIdRegistrar:Ljava/lang/String;

    return-object v0
.end method

.method public final setVatId(Ljava/lang/String;)Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company$Builder;
    .registers 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 401
    move-object v0, p0

    check-cast v0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company$Builder;

    .line 402
    iput-object p1, v0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company$Builder;->vatId:Ljava/lang/String;

    return-object v0
.end method

.method public final setVerification(Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company$Verification;)Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company$Builder;
    .registers 3
    .param p1    # Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company$Verification;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 410
    move-object v0, p0

    check-cast v0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company$Builder;

    .line 411
    iput-object p1, v0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company$Builder;->verification:Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company$Verification;

    return-object v0
.end method
