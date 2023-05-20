.class public Lcom/huawei/secure/android/common/util/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/Character;

.field private c:Ljava/lang/Character;

.field private d:I

.field private e:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/huawei/secure/android/common/util/a;->d:I

    .line 3
    iput v0, p0, Lcom/huawei/secure/android/common/util/a;->e:I

    .line 9
    iput-object p1, p0, Lcom/huawei/secure/android/common/util/a;->a:Ljava/lang/String;

    return-void
.end method

.method public static b(Ljava/lang/Character;)Z
    .registers 3

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 2
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Character;->charValue()C

    move-result p0

    const/16 v1, 0x30

    if-lt p0, v1, :cond_10

    const/16 v1, 0x39

    if-le p0, v1, :cond_20

    :cond_10
    const/16 v1, 0x61

    if-lt p0, v1, :cond_18

    const/16 v1, 0x66

    if-le p0, v1, :cond_20

    :cond_18
    const/16 v1, 0x41

    if-lt p0, v1, :cond_21

    const/16 v1, 0x46

    if-gt p0, v1, :cond_21

    :cond_20
    const/4 v0, 0x1

    :cond_21
    return v0
.end method

.method public static c(Ljava/lang/Character;)Z
    .registers 3

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 1
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Character;->charValue()C

    move-result p0

    const/16 v1, 0x30

    if-lt p0, v1, :cond_11

    const/16 v1, 0x37

    if-gt p0, v1, :cond_11

    const/4 v0, 0x1

    :cond_11
    return v0
.end method


# virtual methods
.method public a(Ljava/lang/Character;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/huawei/secure/android/common/util/a;->b:Ljava/lang/Character;

    return-void
.end method

.method public a()Z
    .registers 5

    .line 2
    iget-object v0, p0, Lcom/huawei/secure/android/common/util/a;->b:Ljava/lang/Character;

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    return v1

    .line 5
    :cond_6
    iget-object v0, p0, Lcom/huawei/secure/android/common/util/a;->a:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v0, :cond_c

    return v2

    .line 8
    :cond_c
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_13

    return v2

    .line 11
    :cond_13
    iget v0, p0, Lcom/huawei/secure/android/common/util/a;->d:I

    iget-object v3, p0, Lcom/huawei/secure/android/common/util/a;->a:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v0, v3, :cond_1e

    return v2

    :cond_1e
    return v1
.end method

.method public a(C)Z
    .registers 6

    .line 12
    iget-object v0, p0, Lcom/huawei/secure/android/common/util/a;->b:Ljava/lang/Character;

    const/4 v1, 0x1

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    move-result v0

    if-ne v0, p1, :cond_c

    return v1

    .line 15
    :cond_c
    iget-object v0, p0, Lcom/huawei/secure/android/common/util/a;->a:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v0, :cond_12

    return v2

    .line 18
    :cond_12
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_19

    return v2

    .line 21
    :cond_19
    iget v0, p0, Lcom/huawei/secure/android/common/util/a;->d:I

    iget-object v3, p0, Lcom/huawei/secure/android/common/util/a;->a:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v0, v3, :cond_24

    return v2

    .line 24
    :cond_24
    iget-object v0, p0, Lcom/huawei/secure/android/common/util/a;->a:Ljava/lang/String;

    iget v3, p0, Lcom/huawei/secure/android/common/util/a;->d:I

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, p1, :cond_2f

    goto :goto_30

    :cond_2f
    move v1, v2

    :goto_30
    return v1
.end method

.method public b()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/huawei/secure/android/common/util/a;->d:I

    return v0
.end method

.method public c()V
    .registers 2

    .line 2
    iget-object v0, p0, Lcom/huawei/secure/android/common/util/a;->b:Ljava/lang/Character;

    iput-object v0, p0, Lcom/huawei/secure/android/common/util/a;->c:Ljava/lang/Character;

    .line 3
    iget v0, p0, Lcom/huawei/secure/android/common/util/a;->d:I

    iput v0, p0, Lcom/huawei/secure/android/common/util/a;->e:I

    return-void
.end method

.method public d()Ljava/lang/Character;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/huawei/secure/android/common/util/a;->b:Ljava/lang/Character;

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 3
    iput-object v1, p0, Lcom/huawei/secure/android/common/util/a;->b:Ljava/lang/Character;

    return-object v0

    .line 6
    :cond_8
    iget-object v0, p0, Lcom/huawei/secure/android/common/util/a;->a:Ljava/lang/String;

    if-nez v0, :cond_d

    return-object v1

    .line 9
    :cond_d
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_14

    return-object v1

    .line 12
    :cond_14
    iget v0, p0, Lcom/huawei/secure/android/common/util/a;->d:I

    iget-object v2, p0, Lcom/huawei/secure/android/common/util/a;->a:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v0, v2, :cond_1f

    return-object v1

    .line 15
    :cond_1f
    iget-object v0, p0, Lcom/huawei/secure/android/common/util/a;->a:Ljava/lang/String;

    iget v1, p0, Lcom/huawei/secure/android/common/util/a;->d:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/huawei/secure/android/common/util/a;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    return-object v0
.end method

.method public e()Ljava/lang/Character;
    .registers 4

    .line 1
    invoke-virtual {p0}, Lcom/huawei/secure/android/common/util/a;->d()Ljava/lang/Character;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    .line 5
    :cond_8
    invoke-static {v0}, Lcom/huawei/secure/android/common/util/a;->b(Ljava/lang/Character;)Z

    move-result v2

    if-eqz v2, :cond_f

    return-object v0

    :cond_f
    return-object v1
.end method

.method public f()Ljava/lang/Character;
    .registers 4

    .line 1
    invoke-virtual {p0}, Lcom/huawei/secure/android/common/util/a;->d()Ljava/lang/Character;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    .line 5
    :cond_8
    invoke-static {v0}, Lcom/huawei/secure/android/common/util/a;->c(Ljava/lang/Character;)Z

    move-result v2

    if-eqz v2, :cond_f

    return-object v0

    :cond_f
    return-object v1
.end method

.method public g()Ljava/lang/Character;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/huawei/secure/android/common/util/a;->b:Ljava/lang/Character;

    if-eqz v0, :cond_5

    return-object v0

    .line 4
    :cond_5
    iget-object v0, p0, Lcom/huawei/secure/android/common/util/a;->a:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_b

    return-object v1

    .line 7
    :cond_b
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_12

    return-object v1

    .line 10
    :cond_12
    iget v0, p0, Lcom/huawei/secure/android/common/util/a;->d:I

    iget-object v2, p0, Lcom/huawei/secure/android/common/util/a;->a:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v0, v2, :cond_1d

    return-object v1

    .line 13
    :cond_1d
    iget-object v0, p0, Lcom/huawei/secure/android/common/util/a;->a:Ljava/lang/String;

    iget v1, p0, Lcom/huawei/secure/android/common/util/a;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    return-object v0
.end method

.method protected h()Ljava/lang/String;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/huawei/secure/android/common/util/a;->a:Ljava/lang/String;

    iget v1, p0, Lcom/huawei/secure/android/common/util/a;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/huawei/secure/android/common/util/a;->b:Ljava/lang/Character;

    if-eqz v1, :cond_1d

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/huawei/secure/android/common/util/a;->b:Ljava/lang/Character;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1d
    return-object v0
.end method

.method public i()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/huawei/secure/android/common/util/a;->c:Ljava/lang/Character;

    iput-object v0, p0, Lcom/huawei/secure/android/common/util/a;->b:Ljava/lang/Character;

    .line 2
    iget v0, p0, Lcom/huawei/secure/android/common/util/a;->e:I

    iput v0, p0, Lcom/huawei/secure/android/common/util/a;->d:I

    return-void
.end method
