.class public Lcom/xiaomi/push/gx;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/xiaomi/push/hb;


# instance fields
.field private a:Ljava/lang/String;

.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaomi/push/gx;",
            ">;"
        }
    .end annotation
.end field

.field private a:[Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private b:[Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/push/gx;->a:[Ljava/lang/String;

    iput-object v0, p0, Lcom/xiaomi/push/gx;->b:[Ljava/lang/String;

    iput-object v0, p0, Lcom/xiaomi/push/gx;->a:Ljava/util/List;

    iput-object p1, p0, Lcom/xiaomi/push/gx;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/xiaomi/push/gx;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/xiaomi/push/gx;->a:[Ljava/lang/String;

    iput-object p4, p0, Lcom/xiaomi/push/gx;->b:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/xiaomi/push/gx;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/push/gx;->a:[Ljava/lang/String;

    iput-object v0, p0, Lcom/xiaomi/push/gx;->b:[Ljava/lang/String;

    iput-object v0, p0, Lcom/xiaomi/push/gx;->a:Ljava/util/List;

    iput-object p1, p0, Lcom/xiaomi/push/gx;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/xiaomi/push/gx;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/xiaomi/push/gx;->a:[Ljava/lang/String;

    iput-object p4, p0, Lcom/xiaomi/push/gx;->b:[Ljava/lang/String;

    iput-object p5, p0, Lcom/xiaomi/push/gx;->c:Ljava/lang/String;

    iput-object p6, p0, Lcom/xiaomi/push/gx;->a:Ljava/util/List;

    return-void
.end method

.method public static a(Landroid/os/Bundle;)Lcom/xiaomi/push/gx;
    .registers 11

    const-string v0, "ext_ele_name"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "ext_ns"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "ext_text"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v0, "attributes"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v7, 0x0

    move v8, v7

    :goto_2e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_45

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    aput-object v9, v4, v8

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v5, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_2e

    :cond_45
    const-string v0, "children"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6a

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    array-length v1, p0

    :goto_58
    if-ge v7, v1, :cond_68

    aget-object v8, p0, v7

    check-cast v8, Landroid/os/Bundle;

    invoke-static {v8}, Lcom/xiaomi/push/gx;->a(Landroid/os/Bundle;)Lcom/xiaomi/push/gx;

    move-result-object v8

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_58

    :cond_68
    move-object v7, v0

    goto :goto_6c

    :cond_6a
    const/4 p0, 0x0

    move-object v7, p0

    :goto_6c
    new-instance p0, Lcom/xiaomi/push/gx;

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/xiaomi/push/gx;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-object p0
.end method

.method public static a(Ljava/util/List;)[Landroid/os/Parcelable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaomi/push/gx;",
            ">;)[",
            "Landroid/os/Parcelable;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/xiaomi/push/gx;

    invoke-interface {p0, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/xiaomi/push/gx;

    invoke-static {p0}, Lcom/xiaomi/push/gx;->a([Lcom/xiaomi/push/gx;)[Landroid/os/Parcelable;

    move-result-object p0

    return-object p0
.end method

.method public static a([Lcom/xiaomi/push/gx;)[Landroid/os/Parcelable;
    .registers 4

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    array-length v0, p0

    new-array v0, v0, [Landroid/os/Parcelable;

    const/4 v1, 0x0

    :goto_8
    array-length v2, p0

    if-ge v1, v2, :cond_16

    aget-object v2, p0, v1

    invoke-virtual {v2}, Lcom/xiaomi/push/gx;->a()Landroid/os/Parcelable;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_16
    return-object v0
.end method


# virtual methods
.method public a()Landroid/os/Bundle;
    .registers 6

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lcom/xiaomi/push/gx;->a:Ljava/lang/String;

    const-string v2, "ext_ele_name"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xiaomi/push/gx;->b:Ljava/lang/String;

    const-string v2, "ext_ns"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xiaomi/push/gx;->c:Ljava/lang/String;

    const-string v2, "ext_text"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iget-object v2, p0, Lcom/xiaomi/push/gx;->a:[Ljava/lang/String;

    if-eqz v2, :cond_38

    array-length v2, v2

    if-lez v2, :cond_38

    const/4 v2, 0x0

    :goto_27
    iget-object v3, p0, Lcom/xiaomi/push/gx;->a:[Ljava/lang/String;

    array-length v4, v3

    if-ge v2, v4, :cond_38

    aget-object v3, v3, v2

    iget-object v4, p0, Lcom/xiaomi/push/gx;->b:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_27

    :cond_38
    const-string v2, "attributes"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/xiaomi/push/gx;->a:Ljava/util/List;

    if-eqz v1, :cond_52

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_52

    iget-object v1, p0, Lcom/xiaomi/push/gx;->a:Ljava/util/List;

    invoke-static {v1}, Lcom/xiaomi/push/gx;->a(Ljava/util/List;)[Landroid/os/Parcelable;

    move-result-object v1

    const-string v2, "children"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    :cond_52
    return-object v0
.end method

.method public a()Landroid/os/Parcelable;
    .registers 2

    invoke-virtual {p0}, Lcom/xiaomi/push/gx;->a()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/push/gx;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    if-eqz p1, :cond_1e

    iget-object v0, p0, Lcom/xiaomi/push/gx;->a:[Ljava/lang/String;

    if-eqz v0, :cond_1c

    const/4 v0, 0x0

    :goto_7
    iget-object v1, p0, Lcom/xiaomi/push/gx;->a:[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_1c

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    iget-object p1, p0, Lcom/xiaomi/push/gx;->b:[Ljava/lang/String;

    aget-object p1, p1, v0

    return-object p1

    :cond_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_1c
    const/4 p1, 0x0

    return-object p1

    :cond_1e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public a(Lcom/xiaomi/push/gx;)V
    .registers 3

    iget-object v0, p0, Lcom/xiaomi/push/gx;->a:Ljava/util/List;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/push/gx;->a:Ljava/util/List;

    :cond_b
    iget-object v0, p0, Lcom/xiaomi/push/gx;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/xiaomi/push/gx;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_18
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    invoke-static {p1}, Lcom/xiaomi/push/hl;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_a
    iput-object p1, p0, Lcom/xiaomi/push/gx;->c:Ljava/lang/String;

    return-void
.end method

.method public b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/push/gx;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/push/gx;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/xiaomi/push/gx;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/xiaomi/push/hl;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_f
    iget-object v0, p0, Lcom/xiaomi/push/gx;->c:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/push/gx;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/push/gx;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, " "

    const-string v3, "\""

    if-nez v1, :cond_2e

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "xmlns="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/push/gx;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2e
    iget-object v1, p0, Lcom/xiaomi/push/gx;->a:[Ljava/lang/String;

    if-eqz v1, :cond_65

    array-length v1, v1

    if-lez v1, :cond_65

    const/4 v1, 0x0

    :goto_36
    iget-object v4, p0, Lcom/xiaomi/push/gx;->a:[Ljava/lang/String;

    array-length v4, v4

    if-ge v1, v4, :cond_65

    iget-object v4, p0, Lcom/xiaomi/push/gx;->b:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_62

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/xiaomi/push/gx;->a:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "=\""

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/xiaomi/push/gx;->b:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-static {v4}, Lcom/xiaomi/push/hl;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_62
    add-int/lit8 v1, v1, 0x1

    goto :goto_36

    :cond_65
    iget-object v1, p0, Lcom/xiaomi/push/gx;->c:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "</"

    const-string v3, ">"

    if-nez v1, :cond_85

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/push/gx;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_79
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/push/gx;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b1

    :cond_85
    iget-object v1, p0, Lcom/xiaomi/push/gx;->a:Ljava/util/List;

    if-eqz v1, :cond_ac

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_ac

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/push/gx;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_98
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_79

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xiaomi/push/gx;

    invoke-virtual {v4}, Lcom/xiaomi/push/gx;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_98

    :cond_ac
    const-string v1, "/>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_b1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lcom/xiaomi/push/gx;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
