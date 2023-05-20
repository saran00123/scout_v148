.class public final Lcom/meizu/cloud/pushsdk/c/c/f$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/cloud/pushsdk/c/c/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/cloud/pushsdk/c/c/f$a$a;
    }
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:I

.field final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field h:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/c/c/f$a;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/c/c/f$a;->c:Ljava/lang/String;

    const/4 v1, -0x1

    iput v1, p0, Lcom/meizu/cloud/pushsdk/c/c/f$a;->e:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/meizu/cloud/pushsdk/c/c/f$a;->f:Ljava/util/List;

    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/c/c/f$a;->f:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static a([B)Ljava/lang/String;
    .registers 9

    const/4 v0, 0x0

    const/4 v1, -0x1

    move v3, v0

    move v2, v1

    move v1, v3

    :goto_5
    array-length v4, p0

    const/16 v5, 0x10

    if-ge v1, v4, :cond_23

    move v4, v1

    :goto_b
    if-ge v4, v5, :cond_1a

    aget-byte v6, p0, v4

    if-nez v6, :cond_1a

    add-int/lit8 v6, v4, 0x1

    aget-byte v6, p0, v6

    if-nez v6, :cond_1a

    add-int/lit8 v4, v4, 0x2

    goto :goto_b

    :cond_1a
    sub-int v5, v4, v1

    if-le v5, v3, :cond_20

    move v2, v1

    move v3, v5

    :cond_20
    add-int/lit8 v1, v4, 0x2

    goto :goto_5

    :cond_23
    new-instance v1, Lcom/meizu/cloud/pushsdk/c/g/b;

    invoke-direct {v1}, Lcom/meizu/cloud/pushsdk/c/g/b;-><init>()V

    :cond_28
    :goto_28
    array-length v4, p0

    if-ge v0, v4, :cond_52

    const/16 v4, 0x3a

    if-ne v0, v2, :cond_39

    invoke-virtual {v1, v4}, Lcom/meizu/cloud/pushsdk/c/g/b;->b(I)Lcom/meizu/cloud/pushsdk/c/g/b;

    add-int/2addr v0, v3

    if-ne v0, v5, :cond_28

    invoke-virtual {v1, v4}, Lcom/meizu/cloud/pushsdk/c/g/b;->b(I)Lcom/meizu/cloud/pushsdk/c/g/b;

    goto :goto_28

    :cond_39
    if-lez v0, :cond_3e

    invoke-virtual {v1, v4}, Lcom/meizu/cloud/pushsdk/c/g/b;->b(I)Lcom/meizu/cloud/pushsdk/c/g/b;

    :cond_3e
    aget-byte v4, p0, v0

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    add-int/lit8 v6, v0, 0x1

    aget-byte v6, p0, v6

    and-int/lit16 v6, v6, 0xff

    or-int/2addr v4, v6

    int-to-long v6, v4

    invoke-virtual {v1, v6, v7}, Lcom/meizu/cloud/pushsdk/c/g/b;->d(J)Lcom/meizu/cloud/pushsdk/c/g/b;

    add-int/lit8 v0, v0, 0x2

    goto :goto_28

    :cond_52
    invoke-virtual {v1}, Lcom/meizu/cloud/pushsdk/c/g/b;->h()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private a(Ljava/lang/String;II)V
    .registers 14

    if-ne p2, p3, :cond_3

    return-void

    :cond_3
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2f

    const-string v2, ""

    const/4 v3, 0x1

    if-eq v0, v1, :cond_1e

    const/16 v1, 0x5c

    if-ne v0, v1, :cond_13

    goto :goto_1e

    :cond_13
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/c/c/f$a;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v3

    invoke-interface {v0, v1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_29

    :cond_1e
    :goto_1e
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/c/c/f$a;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/c/c/f$a;->f:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_41

    :cond_29
    :goto_29
    move v6, p2

    if-ge v6, p3, :cond_44

    const-string p2, "/\\"

    invoke-static {p1, v6, p3, p2}, Lcom/meizu/cloud/pushsdk/c/c/m;->a(Ljava/lang/String;IILjava/lang/String;)I

    move-result p2

    if-ge p2, p3, :cond_36

    move v0, v3

    goto :goto_37

    :cond_36
    const/4 v0, 0x0

    :goto_37
    const/4 v9, 0x1

    move-object v4, p0

    move-object v5, p1

    move v7, p2

    move v8, v0

    invoke-direct/range {v4 .. v9}, Lcom/meizu/cloud/pushsdk/c/c/f$a;->a(Ljava/lang/String;IIZZ)V

    if-eqz v0, :cond_29

    :goto_41
    add-int/lit8 p2, p2, 0x1

    goto :goto_29

    :cond_44
    return-void
.end method

.method private a(Ljava/lang/String;IIZZ)V
    .registers 14

    const-string v3, " \"<>^`{}|/\\?#"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v0, p1

    move v1, p2

    move v2, p3

    move v4, p5

    invoke-static/range {v0 .. v7}, Lcom/meizu/cloud/pushsdk/c/c/f;->a(Ljava/lang/String;IILjava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/meizu/cloud/pushsdk/c/c/f$a;->b(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_14

    return-void

    :cond_14
    invoke-direct {p0, p1}, Lcom/meizu/cloud/pushsdk/c/c/f$a;->c(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1e

    invoke-direct {p0}, Lcom/meizu/cloud/pushsdk/c/c/f$a;->c()V

    return-void

    :cond_1e
    iget-object p2, p0, Lcom/meizu/cloud/pushsdk/c/c/f$a;->f:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_3e

    iget-object p2, p0, Lcom/meizu/cloud/pushsdk/c/c/f$a;->f:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    invoke-interface {p2, p3, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_43

    :cond_3e
    iget-object p2, p0, Lcom/meizu/cloud/pushsdk/c/c/f$a;->f:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_43
    if-eqz p4, :cond_4c

    iget-object p1, p0, Lcom/meizu/cloud/pushsdk/c/c/f$a;->f:Ljava/util/List;

    const-string p2, ""

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4c
    return-void
.end method

.method private static a(Ljava/lang/String;II[BI)Z
    .registers 12

    move v0, p4

    :goto_1
    const/4 v1, 0x0

    if-ge p1, p2, :cond_44

    array-length v2, p3

    if-ne v0, v2, :cond_8

    return v1

    :cond_8
    if-eq v0, p4, :cond_15

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2e

    if-eq v2, v3, :cond_13

    return v1

    :cond_13
    add-int/lit8 p1, p1, 0x1

    :cond_15
    move v2, p1

    move v3, v1

    :goto_17
    if-ge v2, p2, :cond_37

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x30

    if-lt v4, v5, :cond_37

    const/16 v6, 0x39

    if-le v4, v6, :cond_26

    goto :goto_37

    :cond_26
    if-nez v3, :cond_2b

    if-eq p1, v2, :cond_2b

    return v1

    :cond_2b
    mul-int/lit8 v3, v3, 0xa

    add-int/2addr v3, v4

    sub-int/2addr v3, v5

    const/16 v4, 0xff

    if-le v3, v4, :cond_34

    return v1

    :cond_34
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    :cond_37
    :goto_37
    sub-int p1, v2, p1

    if-nez p1, :cond_3c

    return v1

    :cond_3c
    add-int/lit8 p1, v0, 0x1

    int-to-byte v1, v3

    aput-byte v1, p3, v0

    move v0, p1

    move p1, v2

    goto :goto_1

    :cond_44
    add-int/lit8 p4, p4, 0x4

    if-ne v0, p4, :cond_49

    const/4 v1, 0x1

    :cond_49
    return v1
.end method

.method private static b(Ljava/lang/String;II)I
    .registers 12

    sub-int v0, p2, p1

    const/4 v1, -0x1

    const/4 v2, 0x2

    if-ge v0, v2, :cond_7

    return v1

    :cond_7
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/4 v2, 0x0

    const/16 v3, 0x7a

    const/16 v4, 0x61

    const/4 v5, 0x1

    if-lt v0, v4, :cond_18

    if-le v0, v3, :cond_16

    goto :goto_18

    :cond_16
    move v6, v2

    goto :goto_19

    :cond_18
    :goto_18
    move v6, v5

    :goto_19
    const/16 v7, 0x5a

    const/16 v8, 0x41

    if-lt v0, v8, :cond_21

    if-le v0, v7, :cond_22

    :cond_21
    move v2, v5

    :cond_22
    if-eqz v6, :cond_27

    if-eqz v2, :cond_27

    return v1

    :cond_27
    add-int/2addr p1, v5

    :goto_28
    if-ge p1, p2, :cond_57

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-lt v0, v4, :cond_33

    if-gt v0, v3, :cond_33

    goto :goto_54

    :cond_33
    if-lt v0, v8, :cond_38

    if-gt v0, v7, :cond_38

    goto :goto_54

    :cond_38
    const/16 v2, 0x30

    if-lt v0, v2, :cond_41

    const/16 v2, 0x39

    if-gt v0, v2, :cond_41

    goto :goto_54

    :cond_41
    const/16 v2, 0x2b

    if-eq v0, v2, :cond_54

    const/16 v2, 0x2d

    if-eq v0, v2, :cond_54

    const/16 v2, 0x2e

    if-ne v0, v2, :cond_4e

    goto :goto_54

    :cond_4e
    const/16 p0, 0x3a

    if-ne v0, p0, :cond_53

    return p1

    :cond_53
    return v1

    :cond_54
    :goto_54
    add-int/lit8 p1, p1, 0x1

    goto :goto_28

    :cond_57
    return v1
.end method

.method private b(Ljava/lang/String;)Z
    .registers 3

    const-string v0, "."

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    const-string v0, "%2e"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_11

    goto :goto_13

    :cond_11
    const/4 p1, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 p1, 0x1

    :goto_14
    return p1
.end method

.method private static c(Ljava/lang/String;II)I
    .registers 6

    const/4 v0, 0x0

    :goto_1
    if-ge p1, p2, :cond_14

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x5c

    if-eq v1, v2, :cond_f

    const/16 v2, 0x2f

    if-ne v1, v2, :cond_14

    :cond_f
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_14
    return v0
.end method

.method private c()V
    .registers 4

    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/c/c/f$a;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/c/c/f$a;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2a

    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/c/c/f$a;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_2f

    :cond_2a
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/c/c/f$a;->f:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2f
    return-void
.end method

.method private c(Ljava/lang/String;)Z
    .registers 3

    const-string v0, ".."

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23

    const-string v0, "%2e."

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_23

    const-string v0, ".%2e"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_23

    const-string v0, "%2e%2e"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_21

    goto :goto_23

    :cond_21
    const/4 p1, 0x0

    goto :goto_24

    :cond_23
    :goto_23
    const/4 p1, 0x1

    :goto_24
    return p1
.end method

.method private static d(Ljava/lang/String;II)I
    .registers 5

    :goto_0
    if-ge p1, p2, :cond_1f

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x3a

    if-eq v0, v1, :cond_1e

    const/16 v1, 0x5b

    if-eq v0, v1, :cond_f

    goto :goto_1b

    :cond_f
    add-int/lit8 p1, p1, 0x1

    if-ge p1, p2, :cond_1b

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x5d

    if-ne v0, v1, :cond_f

    :cond_1b
    :goto_1b
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1e
    return p1

    :cond_1f
    return p2
.end method

.method private static e(Ljava/lang/String;II)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/meizu/cloud/pushsdk/c/c/f;->a(Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object p0

    const-string p1, ":"

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_48

    const-string p1, "["

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_28

    const-string p1, "]"

    invoke-virtual {p0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_28

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    const/4 p2, 0x1

    sub-int/2addr p1, p2

    invoke-static {p0, p2, p1}, Lcom/meizu/cloud/pushsdk/c/c/f$a;->f(Ljava/lang/String;II)Ljava/net/InetAddress;

    move-result-object p0

    goto :goto_30

    :cond_28
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    invoke-static {p0, v0, p1}, Lcom/meizu/cloud/pushsdk/c/c/f$a;->f(Ljava/lang/String;II)Ljava/net/InetAddress;

    move-result-object p0

    :goto_30
    if-nez p0, :cond_34

    const/4 p0, 0x0

    return-object p0

    :cond_34
    invoke-virtual {p0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object p0

    array-length p1, p0

    const/16 p2, 0x10

    if-ne p1, p2, :cond_42

    invoke-static {p0}, Lcom/meizu/cloud/pushsdk/c/c/f$a;->a([B)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_42
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_48
    invoke-static {p0}, Lcom/meizu/cloud/pushsdk/c/c/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static f(Ljava/lang/String;II)Ljava/net/InetAddress;
    .registers 13

    const/16 v0, 0x10

    new-array v0, v0, [B

    const/4 v1, -0x1

    const/4 v2, 0x0

    move v4, v1

    move v5, v4

    move v3, v2

    :goto_9
    const/4 v6, 0x0

    if-ge p1, p2, :cond_7c

    array-length v7, v0

    if-ne v3, v7, :cond_10

    return-object v6

    :cond_10
    add-int/lit8 v7, p1, 0x2

    if-gt v7, p2, :cond_29

    const/4 v8, 0x2

    const-string v9, "::"

    invoke-virtual {p0, p1, v9, v2, v8}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v8

    if-eqz v8, :cond_29

    if-eq v4, v1, :cond_20

    return-object v6

    :cond_20
    add-int/lit8 v3, v3, 0x2

    if-ne v7, p2, :cond_26

    move v4, v3

    goto :goto_7c

    :cond_26
    move v4, v3

    move v5, v7

    goto :goto_4d

    :cond_29
    if-eqz v3, :cond_4c

    const/4 v7, 0x1

    const-string v8, ":"

    invoke-virtual {p0, p1, v8, v2, v7}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v8

    if-eqz v8, :cond_37

    add-int/lit8 p1, p1, 0x1

    goto :goto_4c

    :cond_37
    const-string v8, "."

    invoke-virtual {p0, p1, v8, v2, v7}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result p1

    if-eqz p1, :cond_4b

    add-int/lit8 p1, v3, -0x2

    invoke-static {p0, v5, p2, v0, p1}, Lcom/meizu/cloud/pushsdk/c/c/f$a;->a(Ljava/lang/String;II[BI)Z

    move-result p0

    if-nez p0, :cond_48

    return-object v6

    :cond_48
    add-int/lit8 v3, v3, 0x2

    goto :goto_7c

    :cond_4b
    return-object v6

    :cond_4c
    :goto_4c
    move v5, p1

    :goto_4d
    move v7, v2

    move p1, v5

    :goto_4f
    if-ge p1, p2, :cond_62

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Lcom/meizu/cloud/pushsdk/c/c/f;->a(C)I

    move-result v8

    if-ne v8, v1, :cond_5c

    goto :goto_62

    :cond_5c
    shl-int/lit8 v7, v7, 0x4

    add-int/2addr v7, v8

    add-int/lit8 p1, p1, 0x1

    goto :goto_4f

    :cond_62
    :goto_62
    sub-int v8, p1, v5

    if-eqz v8, :cond_7b

    const/4 v9, 0x4

    if-le v8, v9, :cond_6a

    goto :goto_7b

    :cond_6a
    add-int/lit8 v6, v3, 0x1

    ushr-int/lit8 v8, v7, 0x8

    and-int/lit16 v8, v8, 0xff

    int-to-byte v8, v8

    aput-byte v8, v0, v3

    add-int/lit8 v3, v6, 0x1

    and-int/lit16 v7, v7, 0xff

    int-to-byte v7, v7

    aput-byte v7, v0, v6

    goto :goto_9

    :cond_7b
    :goto_7b
    return-object v6

    :cond_7c
    :goto_7c
    array-length p0, v0

    if-eq v3, p0, :cond_8f

    if-ne v4, v1, :cond_82

    return-object v6

    :cond_82
    array-length p0, v0

    sub-int p1, v3, v4

    sub-int/2addr p0, p1

    invoke-static {v0, v4, v0, p0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p0, v0

    sub-int/2addr p0, v3

    add-int/2addr p0, v4

    invoke-static {v0, v4, p0, v2}, Ljava/util/Arrays;->fill([BIIB)V

    :cond_8f
    :try_start_8f
    invoke-static {v0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object p0
    :try_end_93
    .catch Ljava/net/UnknownHostException; {:try_start_8f .. :try_end_93} :catch_94

    return-object p0

    :catch_94
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0
.end method

.method private static g(Ljava/lang/String;II)I
    .registers 12

    const/4 v0, -0x1

    :try_start_1
    const-string v4, ""

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v1, p0

    move v2, p1

    move v3, p2

    invoke-static/range {v1 .. v8}, Lcom/meizu/cloud/pushsdk/c/c/f;->a(Ljava/lang/String;IILjava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_12
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_12} :catch_1a

    if-lez p0, :cond_1a

    const p1, 0xffff

    if-gt p0, p1, :cond_1a

    return p0

    :catch_1a
    :cond_1a
    return v0
.end method


# virtual methods
.method a()I
    .registers 3

    iget v0, p0, Lcom/meizu/cloud/pushsdk/c/c/f$a;->e:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    goto :goto_c

    :cond_6
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/c/c/f$a;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/meizu/cloud/pushsdk/c/c/f;->a(Ljava/lang/String;)I

    move-result v0

    :goto_c
    return v0
.end method

.method a(Lcom/meizu/cloud/pushsdk/c/c/f;Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/c/c/f$a$a;
    .registers 23

    move-object/from16 v0, p0

    move-object/from16 v9, p2

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v7, 0x0

    invoke-static {v9, v7, v1}, Lcom/meizu/cloud/pushsdk/c/c/m;->a(Ljava/lang/String;II)I

    move-result v8

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v9, v8, v1}, Lcom/meizu/cloud/pushsdk/c/c/m;->b(Ljava/lang/String;II)I

    move-result v10

    invoke-static {v9, v8, v10}, Lcom/meizu/cloud/pushsdk/c/c/f$a;->b(Ljava/lang/String;II)I

    move-result v1

    const/4 v11, -0x1

    if-eq v1, v11, :cond_49

    const/4 v2, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x6

    const-string v4, "https:"

    move-object/from16 v1, p2

    move v3, v8

    invoke-virtual/range {v1 .. v6}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v1

    if-eqz v1, :cond_31

    const-string v1, "https"

    iput-object v1, v0, Lcom/meizu/cloud/pushsdk/c/c/f$a;->a:Ljava/lang/String;

    add-int/lit8 v8, v8, 0x6

    goto :goto_51

    :cond_31
    const/4 v2, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x5

    const-string v4, "http:"

    move-object/from16 v1, p2

    move v3, v8

    invoke-virtual/range {v1 .. v6}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v1

    if-eqz v1, :cond_46

    const-string v1, "http"

    iput-object v1, v0, Lcom/meizu/cloud/pushsdk/c/c/f$a;->a:Ljava/lang/String;

    add-int/lit8 v8, v8, 0x5

    goto :goto_51

    :cond_46
    sget-object v1, Lcom/meizu/cloud/pushsdk/c/c/f$a$a;->c:Lcom/meizu/cloud/pushsdk/c/c/f$a$a;

    return-object v1

    :cond_49
    if-eqz p1, :cond_1c7

    invoke-static/range {p1 .. p1}, Lcom/meizu/cloud/pushsdk/c/c/f;->a(Lcom/meizu/cloud/pushsdk/c/c/f;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/meizu/cloud/pushsdk/c/c/f$a;->a:Ljava/lang/String;

    :goto_51
    invoke-static {v9, v8, v10}, Lcom/meizu/cloud/pushsdk/c/c/f$a;->c(Ljava/lang/String;II)I

    move-result v1

    const/4 v2, 0x2

    const/16 v12, 0x3f

    const/16 v13, 0x23

    if-ge v1, v2, :cond_a2

    if-eqz p1, :cond_a2

    invoke-static/range {p1 .. p1}, Lcom/meizu/cloud/pushsdk/c/c/f;->a(Lcom/meizu/cloud/pushsdk/c/c/f;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/meizu/cloud/pushsdk/c/c/f$a;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6b

    goto :goto_a2

    :cond_6b
    invoke-virtual/range {p1 .. p1}, Lcom/meizu/cloud/pushsdk/c/c/f;->a()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/meizu/cloud/pushsdk/c/c/f$a;->b:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lcom/meizu/cloud/pushsdk/c/c/f;->b()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/meizu/cloud/pushsdk/c/c/f$a;->c:Ljava/lang/String;

    invoke-static/range {p1 .. p1}, Lcom/meizu/cloud/pushsdk/c/c/f;->b(Lcom/meizu/cloud/pushsdk/c/c/f;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/meizu/cloud/pushsdk/c/c/f$a;->d:Ljava/lang/String;

    invoke-static/range {p1 .. p1}, Lcom/meizu/cloud/pushsdk/c/c/f;->c(Lcom/meizu/cloud/pushsdk/c/c/f;)I

    move-result v1

    iput v1, v0, Lcom/meizu/cloud/pushsdk/c/c/f$a;->e:I

    iget-object v1, v0, Lcom/meizu/cloud/pushsdk/c/c/f$a;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, v0, Lcom/meizu/cloud/pushsdk/c/c/f$a;->f:Ljava/util/List;

    invoke-virtual/range {p1 .. p1}, Lcom/meizu/cloud/pushsdk/c/c/f;->c()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    if-eq v8, v10, :cond_99

    invoke-virtual {v9, v8}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v13, :cond_17a

    :cond_99
    invoke-virtual/range {p1 .. p1}, Lcom/meizu/cloud/pushsdk/c/c/f;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/meizu/cloud/pushsdk/c/c/f$a;->a(Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/c/c/f$a;

    goto/16 :goto_17a

    :cond_a2
    :goto_a2
    add-int/2addr v8, v1

    move v15, v7

    move/from16 v16, v15

    move v2, v8

    :goto_a7
    const-string v1, "@/\\?#"

    invoke-static {v9, v2, v10, v1}, Lcom/meizu/cloud/pushsdk/c/c/m;->a(Ljava/lang/String;IILjava/lang/String;)I

    move-result v8

    if-eq v8, v10, :cond_b4

    invoke-virtual {v9, v8}, Ljava/lang/String;->charAt(I)C

    move-result v1

    goto :goto_b5

    :cond_b4
    move v1, v11

    :goto_b5
    if-eq v1, v11, :cond_148

    if-eq v1, v13, :cond_148

    const/16 v3, 0x2f

    if-eq v1, v3, :cond_148

    const/16 v3, 0x5c

    if-eq v1, v3, :cond_148

    if-eq v1, v12, :cond_148

    const/16 v3, 0x40

    if-eq v1, v3, :cond_c9

    goto/16 :goto_142

    :cond_c9
    const-string v7, "%40"

    if-nez v15, :cond_11b

    const/16 v1, 0x3a

    invoke-static {v9, v2, v8, v1}, Lcom/meizu/cloud/pushsdk/c/c/m;->a(Ljava/lang/String;IIC)I

    move-result v6

    const/4 v5, 0x1

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x1

    const-string v4, " \"\':;<=>@[]^`{}|/\\?#"

    move-object/from16 v1, p2

    move v3, v6

    move v14, v6

    move/from16 v6, v17

    move-object v13, v7

    move/from16 v7, v18

    move v12, v8

    move/from16 v8, v19

    invoke-static/range {v1 .. v8}, Lcom/meizu/cloud/pushsdk/c/c/f;->a(Ljava/lang/String;IILjava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v1

    if-eqz v16, :cond_102

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lcom/meizu/cloud/pushsdk/c/c/f$a;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_102
    iput-object v1, v0, Lcom/meizu/cloud/pushsdk/c/c/f$a;->b:Ljava/lang/String;

    if-eq v14, v12, :cond_118

    add-int/lit8 v2, v14, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const-string v4, " \"\':;<=>@[]^`{}|/\\?#"

    move-object/from16 v1, p2

    move v3, v12

    invoke-static/range {v1 .. v8}, Lcom/meizu/cloud/pushsdk/c/c/f;->a(Ljava/lang/String;IILjava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/meizu/cloud/pushsdk/c/c/f$a;->c:Ljava/lang/String;

    const/4 v15, 0x1

    :cond_118
    const/16 v16, 0x1

    goto :goto_140

    :cond_11b
    move-object v13, v7

    move v12, v8

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const-string v4, " \"\':;<=>@[]^`{}|/\\?#"

    move-object/from16 v1, p2

    move v3, v12

    invoke-static/range {v1 .. v8}, Lcom/meizu/cloud/pushsdk/c/c/f;->a(Ljava/lang/String;IILjava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lcom/meizu/cloud/pushsdk/c/c/f$a;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/meizu/cloud/pushsdk/c/c/f$a;->c:Ljava/lang/String;

    :goto_140
    add-int/lit8 v2, v12, 0x1

    :goto_142
    const/16 v12, 0x3f

    const/16 v13, 0x23

    goto/16 :goto_a7

    :cond_148
    move v12, v8

    invoke-static {v9, v2, v12}, Lcom/meizu/cloud/pushsdk/c/c/f$a;->d(Ljava/lang/String;II)I

    move-result v1

    add-int/lit8 v3, v1, 0x1

    if-ge v3, v12, :cond_164

    invoke-static {v9, v2, v1}, Lcom/meizu/cloud/pushsdk/c/c/f$a;->e(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/meizu/cloud/pushsdk/c/c/f$a;->d:Ljava/lang/String;

    invoke-static {v9, v3, v12}, Lcom/meizu/cloud/pushsdk/c/c/f$a;->g(Ljava/lang/String;II)I

    move-result v1

    iput v1, v0, Lcom/meizu/cloud/pushsdk/c/c/f$a;->e:I

    iget v1, v0, Lcom/meizu/cloud/pushsdk/c/c/f$a;->e:I

    if-ne v1, v11, :cond_172

    sget-object v1, Lcom/meizu/cloud/pushsdk/c/c/f$a$a;->d:Lcom/meizu/cloud/pushsdk/c/c/f$a$a;

    return-object v1

    :cond_164
    invoke-static {v9, v2, v1}, Lcom/meizu/cloud/pushsdk/c/c/f$a;->e(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/meizu/cloud/pushsdk/c/c/f$a;->d:Ljava/lang/String;

    iget-object v1, v0, Lcom/meizu/cloud/pushsdk/c/c/f$a;->a:Ljava/lang/String;

    invoke-static {v1}, Lcom/meizu/cloud/pushsdk/c/c/f;->a(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/meizu/cloud/pushsdk/c/c/f$a;->e:I

    :cond_172
    iget-object v1, v0, Lcom/meizu/cloud/pushsdk/c/c/f$a;->d:Ljava/lang/String;

    if-nez v1, :cond_179

    sget-object v1, Lcom/meizu/cloud/pushsdk/c/c/f$a$a;->e:Lcom/meizu/cloud/pushsdk/c/c/f$a$a;

    return-object v1

    :cond_179
    move v8, v12

    :cond_17a
    :goto_17a
    const-string v1, "?#"

    invoke-static {v9, v8, v10, v1}, Lcom/meizu/cloud/pushsdk/c/c/m;->a(Ljava/lang/String;IILjava/lang/String;)I

    move-result v1

    invoke-direct {v0, v9, v8, v1}, Lcom/meizu/cloud/pushsdk/c/c/f$a;->a(Ljava/lang/String;II)V

    if-ge v1, v10, :cond_1a9

    invoke-virtual {v9, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x3f

    if-ne v2, v3, :cond_1a9

    const/16 v2, 0x23

    invoke-static {v9, v1, v10, v2}, Lcom/meizu/cloud/pushsdk/c/c/m;->a(Ljava/lang/String;IIC)I

    move-result v11

    add-int/lit8 v2, v1, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x1

    const-string v4, " \"\'<>#"

    move-object/from16 v1, p2

    move v3, v11

    invoke-static/range {v1 .. v8}, Lcom/meizu/cloud/pushsdk/c/c/f;->a(Ljava/lang/String;IILjava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/meizu/cloud/pushsdk/c/c/f;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/meizu/cloud/pushsdk/c/c/f$a;->g:Ljava/util/List;

    move v1, v11

    :cond_1a9
    if-ge v1, v10, :cond_1c4

    invoke-virtual {v9, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x23

    if-ne v2, v3, :cond_1c4

    const/4 v2, 0x1

    add-int/2addr v2, v1

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v4, ""

    move-object/from16 v1, p2

    move v3, v10

    invoke-static/range {v1 .. v8}, Lcom/meizu/cloud/pushsdk/c/c/f;->a(Ljava/lang/String;IILjava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/meizu/cloud/pushsdk/c/c/f$a;->h:Ljava/lang/String;

    :cond_1c4
    sget-object v1, Lcom/meizu/cloud/pushsdk/c/c/f$a$a;->a:Lcom/meizu/cloud/pushsdk/c/c/f$a$a;

    return-object v1

    :cond_1c7
    sget-object v1, Lcom/meizu/cloud/pushsdk/c/c/f$a$a;->b:Lcom/meizu/cloud/pushsdk/c/c/f$a$a;

    return-object v1
.end method

.method public a(Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/c/c/f$a;
    .registers 8

    if-eqz p1, :cond_12

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x1

    const-string v1, " \"\'<>#"

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/meizu/cloud/pushsdk/c/c/f;->a(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/meizu/cloud/pushsdk/c/c/f;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    goto :goto_13

    :cond_12
    const/4 p1, 0x0

    :goto_13
    iput-object p1, p0, Lcom/meizu/cloud/pushsdk/c/c/f$a;->g:Ljava/util/List;

    return-object p0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/c/c/f$a;
    .registers 10

    if-eqz p1, :cond_32

    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/c/c/f$a;->g:Ljava/util/List;

    if-nez v0, :cond_d

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/c/c/f$a;->g:Ljava/util/List;

    :cond_d
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/c/c/f$a;->g:Ljava/util/List;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    const-string v2, " \"\'<>#&="

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lcom/meizu/cloud/pushsdk/c/c/f;->a(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/meizu/cloud/pushsdk/c/c/f$a;->g:Ljava/util/List;

    if-eqz p2, :cond_2d

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x1

    const-string v1, " \"\'<>#&="

    move-object v0, p2

    invoke-static/range {v0 .. v5}, Lcom/meizu/cloud/pushsdk/c/c/f;->a(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object p2

    goto :goto_2e

    :cond_2d
    const/4 p2, 0x0

    :goto_2e
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0

    :cond_32
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "name == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b()Lcom/meizu/cloud/pushsdk/c/c/f;
    .registers 3

    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/c/c/f$a;->a:Ljava/lang/String;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/c/c/f$a;->d:Ljava/lang/String;

    if-eqz v0, :cond_f

    new-instance v0, Lcom/meizu/cloud/pushsdk/c/c/f;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/meizu/cloud/pushsdk/c/c/f;-><init>(Lcom/meizu/cloud/pushsdk/c/c/f$a;Lcom/meizu/cloud/pushsdk/c/c/f$1;)V

    return-object v0

    :cond_f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "host == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_17
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "scheme == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/c/c/f$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/c/c/f$a;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    const/16 v2, 0x3a

    if-eqz v1, :cond_21

    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/c/c/f$a;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3b

    :cond_21
    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/c/c/f$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/c/c/f$a;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_36

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/c/c/f$a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_36
    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_3b
    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/c/c/f$a;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_54

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/c/c/f$a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_59

    :cond_54
    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/c/c/f$a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_59
    invoke-virtual {p0}, Lcom/meizu/cloud/pushsdk/c/c/f$a;->a()I

    move-result v1

    iget-object v3, p0, Lcom/meizu/cloud/pushsdk/c/c/f$a;->a:Ljava/lang/String;

    invoke-static {v3}, Lcom/meizu/cloud/pushsdk/c/c/f;->a(Ljava/lang/String;)I

    move-result v3

    if-eq v1, v3, :cond_6b

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_6b
    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/c/c/f$a;->f:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/meizu/cloud/pushsdk/c/c/f;->a(Ljava/lang/StringBuilder;Ljava/util/List;)V

    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/c/c/f$a;->g:Ljava/util/List;

    if-eqz v1, :cond_7e

    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/c/c/f$a;->g:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/meizu/cloud/pushsdk/c/c/f;->b(Ljava/lang/StringBuilder;Ljava/util/List;)V

    :cond_7e
    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/c/c/f$a;->h:Ljava/lang/String;

    if-eqz v1, :cond_8c

    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/c/c/f$a;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
