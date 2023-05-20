.class public Lio/noties/markwon/html/jsoup/nodes/Attribute;
.super Ljava/lang/Object;
.source "Attribute.java"

# interfaces
.implements Ljava/util/Map$Entry;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Map$Entry<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# instance fields
.field private key:Ljava/lang/String;

.field parent:Lio/noties/markwon/html/jsoup/nodes/Attributes;

.field private val:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    .line 28
    invoke-direct {p0, p1, p2, v0}, Lio/noties/markwon/html/jsoup/nodes/Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;Lio/noties/markwon/html/jsoup/nodes/Attributes;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lio/noties/markwon/html/jsoup/nodes/Attributes;)V
    .registers 5

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    invoke-static {p1}, Lio/noties/markwon/html/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 39
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/noties/markwon/html/jsoup/nodes/Attribute;->key:Ljava/lang/String;

    .line 40
    invoke-static {p1}, Lio/noties/markwon/html/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;)V

    .line 41
    iput-object p2, p0, Lio/noties/markwon/html/jsoup/nodes/Attribute;->val:Ljava/lang/String;

    .line 42
    iput-object p3, p0, Lio/noties/markwon/html/jsoup/nodes/Attribute;->parent:Lio/noties/markwon/html/jsoup/nodes/Attributes;

    return-void
.end method


# virtual methods
.method public clone()Lio/noties/markwon/html/jsoup/nodes/Attribute;
    .registers 3

    .line 197
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/noties/markwon/html/jsoup/nodes/Attribute;
    :try_end_6
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    :catch_7
    move-exception v0

    .line 199
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 10
    invoke-virtual {p0}, Lio/noties/markwon/html/jsoup/nodes/Attribute;->clone()Lio/noties/markwon/html/jsoup/nodes/Attribute;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_38

    .line 181
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_38

    .line 182
    :cond_12
    check-cast p1, Lio/noties/markwon/html/jsoup/nodes/Attribute;

    .line 183
    iget-object v2, p0, Lio/noties/markwon/html/jsoup/nodes/Attribute;->key:Ljava/lang/String;

    if-eqz v2, :cond_21

    iget-object v3, p1, Lio/noties/markwon/html/jsoup/nodes/Attribute;->key:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_26

    goto :goto_25

    :cond_21
    iget-object v2, p1, Lio/noties/markwon/html/jsoup/nodes/Attribute;->key:Ljava/lang/String;

    if-eqz v2, :cond_26

    :goto_25
    return v1

    .line 184
    :cond_26
    iget-object v2, p0, Lio/noties/markwon/html/jsoup/nodes/Attribute;->val:Ljava/lang/String;

    if-eqz v2, :cond_31

    iget-object p1, p1, Lio/noties/markwon/html/jsoup/nodes/Attribute;->val:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_37

    :cond_31
    iget-object p1, p1, Lio/noties/markwon/html/jsoup/nodes/Attribute;->val:Ljava/lang/String;

    if-nez p1, :cond_36

    goto :goto_37

    :cond_36
    move v0, v1

    :goto_37
    return v0

    :cond_38
    :goto_38
    return v1
.end method

.method public bridge synthetic getKey()Ljava/lang/Object;
    .registers 2

    .line 10
    invoke-virtual {p0}, Lio/noties/markwon/html/jsoup/nodes/Attribute;->getKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .registers 2

    .line 50
    iget-object v0, p0, Lio/noties/markwon/html/jsoup/nodes/Attribute;->key:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .registers 2

    .line 10
    invoke-virtual {p0}, Lio/noties/markwon/html/jsoup/nodes/Attribute;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .registers 2

    .line 74
    iget-object v0, p0, Lio/noties/markwon/html/jsoup/nodes/Attribute;->val:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    .line 189
    iget-object v0, p0, Lio/noties/markwon/html/jsoup/nodes/Attribute;->key:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_b

    :cond_a
    move v0, v1

    :goto_b
    mul-int/lit8 v0, v0, 0x1f

    .line 190
    iget-object v2, p0, Lio/noties/markwon/html/jsoup/nodes/Attribute;->val:Ljava/lang/String;

    if-eqz v2, :cond_15

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_15
    add-int/2addr v0, v1

    return v0
.end method

.method public setKey(Ljava/lang/String;)V
    .registers 4

    .line 58
    invoke-static {p1}, Lio/noties/markwon/html/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 59
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 60
    invoke-static {p1}, Lio/noties/markwon/html/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Lio/noties/markwon/html/jsoup/nodes/Attribute;->parent:Lio/noties/markwon/html/jsoup/nodes/Attributes;

    if-eqz v0, :cond_1d

    .line 62
    iget-object v1, p0, Lio/noties/markwon/html/jsoup/nodes/Attribute;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/noties/markwon/html/jsoup/nodes/Attributes;->indexOfKey(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1d

    .line 64
    iget-object v1, p0, Lio/noties/markwon/html/jsoup/nodes/Attribute;->parent:Lio/noties/markwon/html/jsoup/nodes/Attributes;

    iget-object v1, v1, Lio/noties/markwon/html/jsoup/nodes/Attributes;->keys:[Ljava/lang/String;

    aput-object p1, v1, v0

    .line 66
    :cond_1d
    iput-object p1, p0, Lio/noties/markwon/html/jsoup/nodes/Attribute;->key:Ljava/lang/String;

    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 10
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lio/noties/markwon/html/jsoup/nodes/Attribute;->setValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public setValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 82
    iget-object v0, p0, Lio/noties/markwon/html/jsoup/nodes/Attribute;->parent:Lio/noties/markwon/html/jsoup/nodes/Attributes;

    iget-object v1, p0, Lio/noties/markwon/html/jsoup/nodes/Attribute;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/noties/markwon/html/jsoup/nodes/Attributes;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 83
    iget-object v1, p0, Lio/noties/markwon/html/jsoup/nodes/Attribute;->parent:Lio/noties/markwon/html/jsoup/nodes/Attributes;

    if-eqz v1, :cond_1b

    .line 84
    iget-object v2, p0, Lio/noties/markwon/html/jsoup/nodes/Attribute;->key:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lio/noties/markwon/html/jsoup/nodes/Attributes;->indexOfKey(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1b

    .line 86
    iget-object v2, p0, Lio/noties/markwon/html/jsoup/nodes/Attribute;->parent:Lio/noties/markwon/html/jsoup/nodes/Attributes;

    iget-object v2, v2, Lio/noties/markwon/html/jsoup/nodes/Attributes;->vals:[Ljava/lang/String;

    aput-object p1, v2, v1

    .line 88
    :cond_1b
    iput-object p1, p0, Lio/noties/markwon/html/jsoup/nodes/Attribute;->val:Ljava/lang/String;

    return-object v0
.end method
