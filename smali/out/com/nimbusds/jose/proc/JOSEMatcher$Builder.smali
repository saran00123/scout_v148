.class public Lcom/nimbusds/jose/proc/JOSEMatcher$Builder;
.super Ljava/lang/Object;
.source "JOSEMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nimbusds/jose/proc/JOSEMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private algs:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/Algorithm;",
            ">;"
        }
    .end annotation
.end field

.field private classes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/nimbusds/jose/JOSEObject;",
            ">;>;"
        }
    .end annotation
.end field

.field private encs:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/EncryptionMethod;",
            ">;"
        }
    .end annotation
.end field

.field private jkus:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/net/URI;",
            ">;"
        }
    .end annotation
.end field

.field private kids:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public algorithm(Lcom/nimbusds/jose/Algorithm;)Lcom/nimbusds/jose/proc/JOSEMatcher$Builder;
    .registers 3

    if-nez p1, :cond_6

    const/4 p1, 0x0

    .line 183
    iput-object p1, p0, Lcom/nimbusds/jose/proc/JOSEMatcher$Builder;->algs:Ljava/util/Set;

    goto :goto_11

    .line 185
    :cond_6
    new-instance v0, Ljava/util/HashSet;

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/nimbusds/jose/proc/JOSEMatcher$Builder;->algs:Ljava/util/Set;

    :goto_11
    return-object p0
.end method

.method public algorithms(Ljava/util/Set;)Lcom/nimbusds/jose/proc/JOSEMatcher$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/Algorithm;",
            ">;)",
            "Lcom/nimbusds/jose/proc/JOSEMatcher$Builder;"
        }
    .end annotation

    .line 215
    iput-object p1, p0, Lcom/nimbusds/jose/proc/JOSEMatcher$Builder;->algs:Ljava/util/Set;

    return-object p0
.end method

.method public varargs algorithms([Lcom/nimbusds/jose/Algorithm;)Lcom/nimbusds/jose/proc/JOSEMatcher$Builder;
    .registers 3

    .line 200
    new-instance v0, Ljava/util/HashSet;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, v0}, Lcom/nimbusds/jose/proc/JOSEMatcher$Builder;->algorithms(Ljava/util/Set;)Lcom/nimbusds/jose/proc/JOSEMatcher$Builder;

    return-object p0
.end method

.method public build()Lcom/nimbusds/jose/proc/JOSEMatcher;
    .registers 8

    .line 367
    new-instance v6, Lcom/nimbusds/jose/proc/JOSEMatcher;

    iget-object v1, p0, Lcom/nimbusds/jose/proc/JOSEMatcher$Builder;->classes:Ljava/util/Set;

    iget-object v2, p0, Lcom/nimbusds/jose/proc/JOSEMatcher$Builder;->algs:Ljava/util/Set;

    iget-object v3, p0, Lcom/nimbusds/jose/proc/JOSEMatcher$Builder;->encs:Ljava/util/Set;

    iget-object v4, p0, Lcom/nimbusds/jose/proc/JOSEMatcher$Builder;->jkus:Ljava/util/Set;

    iget-object v5, p0, Lcom/nimbusds/jose/proc/JOSEMatcher$Builder;->kids:Ljava/util/Set;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/nimbusds/jose/proc/JOSEMatcher;-><init>(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V

    return-object v6
.end method

.method public encryptionMethod(Lcom/nimbusds/jose/EncryptionMethod;)Lcom/nimbusds/jose/proc/JOSEMatcher$Builder;
    .registers 3

    if-nez p1, :cond_6

    const/4 p1, 0x0

    .line 231
    iput-object p1, p0, Lcom/nimbusds/jose/proc/JOSEMatcher$Builder;->encs:Ljava/util/Set;

    goto :goto_11

    .line 233
    :cond_6
    new-instance v0, Ljava/util/HashSet;

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/nimbusds/jose/proc/JOSEMatcher$Builder;->encs:Ljava/util/Set;

    :goto_11
    return-object p0
.end method

.method public encryptionMethods(Ljava/util/Set;)Lcom/nimbusds/jose/proc/JOSEMatcher$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/EncryptionMethod;",
            ">;)",
            "Lcom/nimbusds/jose/proc/JOSEMatcher$Builder;"
        }
    .end annotation

    .line 263
    iput-object p1, p0, Lcom/nimbusds/jose/proc/JOSEMatcher$Builder;->encs:Ljava/util/Set;

    return-object p0
.end method

.method public varargs encryptionMethods([Lcom/nimbusds/jose/EncryptionMethod;)Lcom/nimbusds/jose/proc/JOSEMatcher$Builder;
    .registers 3

    .line 248
    new-instance v0, Ljava/util/HashSet;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, v0}, Lcom/nimbusds/jose/proc/JOSEMatcher$Builder;->encryptionMethods(Ljava/util/Set;)Lcom/nimbusds/jose/proc/JOSEMatcher$Builder;

    return-object p0
.end method

.method public joseClass(Ljava/lang/Class;)Lcom/nimbusds/jose/proc/JOSEMatcher$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/nimbusds/jose/JOSEObject;",
            ">;)",
            "Lcom/nimbusds/jose/proc/JOSEMatcher$Builder;"
        }
    .end annotation

    if-nez p1, :cond_6

    const/4 p1, 0x0

    .line 135
    iput-object p1, p0, Lcom/nimbusds/jose/proc/JOSEMatcher$Builder;->classes:Ljava/util/Set;

    goto :goto_11

    .line 137
    :cond_6
    new-instance v0, Ljava/util/HashSet;

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/nimbusds/jose/proc/JOSEMatcher$Builder;->classes:Ljava/util/Set;

    :goto_11
    return-object p0
.end method

.method public joseClasses(Ljava/util/Set;)Lcom/nimbusds/jose/proc/JOSEMatcher$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/nimbusds/jose/JOSEObject;",
            ">;>;)",
            "Lcom/nimbusds/jose/proc/JOSEMatcher$Builder;"
        }
    .end annotation

    .line 167
    iput-object p1, p0, Lcom/nimbusds/jose/proc/JOSEMatcher$Builder;->classes:Ljava/util/Set;

    return-object p0
.end method

.method public varargs joseClasses([Ljava/lang/Class;)Lcom/nimbusds/jose/proc/JOSEMatcher$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "+",
            "Lcom/nimbusds/jose/JOSEObject;",
            ">;)",
            "Lcom/nimbusds/jose/proc/JOSEMatcher$Builder;"
        }
    .end annotation

    .line 152
    new-instance v0, Ljava/util/HashSet;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, v0}, Lcom/nimbusds/jose/proc/JOSEMatcher$Builder;->joseClasses(Ljava/util/Set;)Lcom/nimbusds/jose/proc/JOSEMatcher$Builder;

    return-object p0
.end method

.method public jwkURL(Ljava/net/URI;)Lcom/nimbusds/jose/proc/JOSEMatcher$Builder;
    .registers 3

    if-nez p1, :cond_6

    const/4 p1, 0x0

    .line 278
    iput-object p1, p0, Lcom/nimbusds/jose/proc/JOSEMatcher$Builder;->jkus:Ljava/util/Set;

    goto :goto_11

    .line 280
    :cond_6
    new-instance v0, Ljava/util/HashSet;

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/nimbusds/jose/proc/JOSEMatcher$Builder;->jkus:Ljava/util/Set;

    :goto_11
    return-object p0
.end method

.method public jwkURLs(Ljava/util/Set;)Lcom/nimbusds/jose/proc/JOSEMatcher$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/net/URI;",
            ">;)",
            "Lcom/nimbusds/jose/proc/JOSEMatcher$Builder;"
        }
    .end annotation

    .line 309
    iput-object p1, p0, Lcom/nimbusds/jose/proc/JOSEMatcher$Builder;->jkus:Ljava/util/Set;

    return-object p0
.end method

.method public varargs jwkURLs([Ljava/net/URI;)Lcom/nimbusds/jose/proc/JOSEMatcher$Builder;
    .registers 3

    .line 295
    new-instance v0, Ljava/util/HashSet;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, v0}, Lcom/nimbusds/jose/proc/JOSEMatcher$Builder;->jwkURLs(Ljava/util/Set;)Lcom/nimbusds/jose/proc/JOSEMatcher$Builder;

    return-object p0
.end method

.method public keyID(Ljava/lang/String;)Lcom/nimbusds/jose/proc/JOSEMatcher$Builder;
    .registers 3

    if-nez p1, :cond_6

    const/4 p1, 0x0

    .line 324
    iput-object p1, p0, Lcom/nimbusds/jose/proc/JOSEMatcher$Builder;->kids:Ljava/util/Set;

    goto :goto_11

    .line 326
    :cond_6
    new-instance v0, Ljava/util/HashSet;

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/nimbusds/jose/proc/JOSEMatcher$Builder;->kids:Ljava/util/Set;

    :goto_11
    return-object p0
.end method

.method public keyIDs(Ljava/util/Set;)Lcom/nimbusds/jose/proc/JOSEMatcher$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/nimbusds/jose/proc/JOSEMatcher$Builder;"
        }
    .end annotation

    .line 355
    iput-object p1, p0, Lcom/nimbusds/jose/proc/JOSEMatcher$Builder;->kids:Ljava/util/Set;

    return-object p0
.end method

.method public varargs keyIDs([Ljava/lang/String;)Lcom/nimbusds/jose/proc/JOSEMatcher$Builder;
    .registers 3

    .line 341
    new-instance v0, Ljava/util/HashSet;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, v0}, Lcom/nimbusds/jose/proc/JOSEMatcher$Builder;->keyIDs(Ljava/util/Set;)Lcom/nimbusds/jose/proc/JOSEMatcher$Builder;

    return-object p0
.end method
