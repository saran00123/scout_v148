.class public abstract Lio/noties/markwon/html/jsoup/parser/Token$Tag;
.super Lio/noties/markwon/html/jsoup/parser/Token;
.source "Token.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/noties/markwon/html/jsoup/parser/Token;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Tag"
.end annotation


# instance fields
.field public attributes:Lio/noties/markwon/html/jsoup/nodes/Attributes;

.field private hasEmptyAttributeValue:Z

.field private hasPendingAttributeValue:Z

.field public normalName:Ljava/lang/String;

.field private pendingAttributeName:Ljava/lang/String;

.field private pendingAttributeValue:Ljava/lang/StringBuilder;

.field private pendingAttributeValueS:Ljava/lang/String;

.field public selfClosing:Z

.field public tagName:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Lio/noties/markwon/html/jsoup/parser/Token$TokenType;)V
    .registers 2
    .param p1    # Lio/noties/markwon/html/jsoup/parser/Token$TokenType;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 92
    invoke-direct {p0, p1}, Lio/noties/markwon/html/jsoup/parser/Token;-><init>(Lio/noties/markwon/html/jsoup/parser/Token$TokenType;)V

    .line 84
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object p1, p0, Lio/noties/markwon/html/jsoup/parser/Token$Tag;->pendingAttributeValue:Ljava/lang/StringBuilder;

    const/4 p1, 0x0

    .line 86
    iput-boolean p1, p0, Lio/noties/markwon/html/jsoup/parser/Token$Tag;->hasEmptyAttributeValue:Z

    .line 87
    iput-boolean p1, p0, Lio/noties/markwon/html/jsoup/parser/Token$Tag;->hasPendingAttributeValue:Z

    .line 88
    iput-boolean p1, p0, Lio/noties/markwon/html/jsoup/parser/Token$Tag;->selfClosing:Z

    return-void
.end method

.method private ensureAttributeValue()V
    .registers 3

    const/4 v0, 0x1

    .line 215
    iput-boolean v0, p0, Lio/noties/markwon/html/jsoup/parser/Token$Tag;->hasPendingAttributeValue:Z

    .line 217
    iget-object v0, p0, Lio/noties/markwon/html/jsoup/parser/Token$Tag;->pendingAttributeValueS:Ljava/lang/String;

    if-eqz v0, :cond_f

    .line 218
    iget-object v1, p0, Lio/noties/markwon/html/jsoup/parser/Token$Tag;->pendingAttributeValue:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    .line 219
    iput-object v0, p0, Lio/noties/markwon/html/jsoup/parser/Token$Tag;->pendingAttributeValueS:Ljava/lang/String;

    :cond_f
    return-void
.end method


# virtual methods
.method final appendAttributeName(C)V
    .registers 2

    .line 181
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/noties/markwon/html/jsoup/parser/Token$Tag;->appendAttributeName(Ljava/lang/String;)V

    return-void
.end method

.method final appendAttributeName(Ljava/lang/String;)V
    .registers 3

    .line 177
    iget-object v0, p0, Lio/noties/markwon/html/jsoup/parser/Token$Tag;->pendingAttributeName:Ljava/lang/String;

    if-nez v0, :cond_5

    goto :goto_9

    :cond_5
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_9
    iput-object p1, p0, Lio/noties/markwon/html/jsoup/parser/Token$Tag;->pendingAttributeName:Ljava/lang/String;

    return-void
.end method

.method final appendAttributeValue(C)V
    .registers 3

    .line 194
    invoke-direct {p0}, Lio/noties/markwon/html/jsoup/parser/Token$Tag;->ensureAttributeValue()V

    .line 195
    iget-object v0, p0, Lio/noties/markwon/html/jsoup/parser/Token$Tag;->pendingAttributeValue:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void
.end method

.method final appendAttributeValue(Ljava/lang/String;)V
    .registers 3

    .line 185
    invoke-direct {p0}, Lio/noties/markwon/html/jsoup/parser/Token$Tag;->ensureAttributeValue()V

    .line 186
    iget-object v0, p0, Lio/noties/markwon/html/jsoup/parser/Token$Tag;->pendingAttributeValue:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_e

    .line 187
    iput-object p1, p0, Lio/noties/markwon/html/jsoup/parser/Token$Tag;->pendingAttributeValueS:Ljava/lang/String;

    goto :goto_13

    .line 189
    :cond_e
    iget-object v0, p0, Lio/noties/markwon/html/jsoup/parser/Token$Tag;->pendingAttributeValue:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_13
    return-void
.end method

.method final appendAttributeValue([C)V
    .registers 3

    .line 199
    invoke-direct {p0}, Lio/noties/markwon/html/jsoup/parser/Token$Tag;->ensureAttributeValue()V

    .line 200
    iget-object v0, p0, Lio/noties/markwon/html/jsoup/parser/Token$Tag;->pendingAttributeValue:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    return-void
.end method

.method final appendAttributeValue([I)V
    .registers 6

    .line 204
    invoke-direct {p0}, Lio/noties/markwon/html/jsoup/parser/Token$Tag;->ensureAttributeValue()V

    .line 205
    array-length v0, p1

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_11

    aget v2, p1, v1

    .line 206
    iget-object v3, p0, Lio/noties/markwon/html/jsoup/parser/Token$Tag;->pendingAttributeValue:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_11
    return-void
.end method

.method final appendTagName(C)V
    .registers 2

    .line 173
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/noties/markwon/html/jsoup/parser/Token$Tag;->appendTagName(Ljava/lang/String;)V

    return-void
.end method

.method final appendTagName(Ljava/lang/String;)V
    .registers 3

    .line 168
    iget-object v0, p0, Lio/noties/markwon/html/jsoup/parser/Token$Tag;->tagName:Ljava/lang/String;

    if-nez v0, :cond_5

    goto :goto_9

    :cond_5
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_9
    iput-object p1, p0, Lio/noties/markwon/html/jsoup/parser/Token$Tag;->tagName:Ljava/lang/String;

    .line 169
    iget-object p1, p0, Lio/noties/markwon/html/jsoup/parser/Token$Tag;->tagName:Ljava/lang/String;

    invoke-static {p1}, Lio/noties/markwon/html/jsoup/helper/Normalizer;->lowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/noties/markwon/html/jsoup/parser/Token$Tag;->normalName:Ljava/lang/String;

    return-void
.end method

.method final finaliseTag()V
    .registers 2

    .line 136
    iget-object v0, p0, Lio/noties/markwon/html/jsoup/parser/Token$Tag;->pendingAttributeName:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 138
    invoke-virtual {p0}, Lio/noties/markwon/html/jsoup/parser/Token$Tag;->newAttribute()V

    :cond_7
    return-void
.end method

.method final getAttributes()Lio/noties/markwon/html/jsoup/nodes/Attributes;
    .registers 2

    .line 163
    iget-object v0, p0, Lio/noties/markwon/html/jsoup/parser/Token$Tag;->attributes:Lio/noties/markwon/html/jsoup/nodes/Attributes;

    return-object v0
.end method

.method final isSelfClosing()Z
    .registers 2

    .line 158
    iget-boolean v0, p0, Lio/noties/markwon/html/jsoup/parser/Token$Tag;->selfClosing:Z

    return v0
.end method

.method final name(Ljava/lang/String;)Lio/noties/markwon/html/jsoup/parser/Token$Tag;
    .registers 2

    .line 152
    iput-object p1, p0, Lio/noties/markwon/html/jsoup/parser/Token$Tag;->tagName:Ljava/lang/String;

    .line 153
    invoke-static {p1}, Lio/noties/markwon/html/jsoup/helper/Normalizer;->lowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/noties/markwon/html/jsoup/parser/Token$Tag;->normalName:Ljava/lang/String;

    return-object p0
.end method

.method final name()Ljava/lang/String;
    .registers 2

    .line 143
    iget-object v0, p0, Lio/noties/markwon/html/jsoup/parser/Token$Tag;->tagName:Ljava/lang/String;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    :goto_e
    invoke-static {v0}, Lio/noties/markwon/html/jsoup/helper/Validate;->isFalse(Z)V

    .line 144
    iget-object v0, p0, Lio/noties/markwon/html/jsoup/parser/Token$Tag;->tagName:Ljava/lang/String;

    return-object v0
.end method

.method final newAttribute()V
    .registers 5

    .line 110
    iget-object v0, p0, Lio/noties/markwon/html/jsoup/parser/Token$Tag;->attributes:Lio/noties/markwon/html/jsoup/nodes/Attributes;

    if-nez v0, :cond_b

    .line 111
    new-instance v0, Lio/noties/markwon/html/jsoup/nodes/Attributes;

    invoke-direct {v0}, Lio/noties/markwon/html/jsoup/nodes/Attributes;-><init>()V

    iput-object v0, p0, Lio/noties/markwon/html/jsoup/parser/Token$Tag;->attributes:Lio/noties/markwon/html/jsoup/nodes/Attributes;

    .line 113
    :cond_b
    iget-object v0, p0, Lio/noties/markwon/html/jsoup/parser/Token$Tag;->pendingAttributeName:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_43

    .line 115
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/noties/markwon/html/jsoup/parser/Token$Tag;->pendingAttributeName:Ljava/lang/String;

    .line 116
    iget-object v0, p0, Lio/noties/markwon/html/jsoup/parser/Token$Tag;->pendingAttributeName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_43

    .line 118
    iget-boolean v0, p0, Lio/noties/markwon/html/jsoup/parser/Token$Tag;->hasPendingAttributeValue:Z

    if-eqz v0, :cond_34

    .line 119
    iget-object v0, p0, Lio/noties/markwon/html/jsoup/parser/Token$Tag;->pendingAttributeValue:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_31

    iget-object v0, p0, Lio/noties/markwon/html/jsoup/parser/Token$Tag;->pendingAttributeValue:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3c

    :cond_31
    iget-object v0, p0, Lio/noties/markwon/html/jsoup/parser/Token$Tag;->pendingAttributeValueS:Ljava/lang/String;

    goto :goto_3c

    .line 120
    :cond_34
    iget-boolean v0, p0, Lio/noties/markwon/html/jsoup/parser/Token$Tag;->hasEmptyAttributeValue:Z

    if-eqz v0, :cond_3b

    const-string v0, ""

    goto :goto_3c

    :cond_3b
    move-object v0, v1

    .line 124
    :goto_3c
    iget-object v2, p0, Lio/noties/markwon/html/jsoup/parser/Token$Tag;->attributes:Lio/noties/markwon/html/jsoup/nodes/Attributes;

    iget-object v3, p0, Lio/noties/markwon/html/jsoup/parser/Token$Tag;->pendingAttributeName:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Lio/noties/markwon/html/jsoup/nodes/Attributes;->put(Ljava/lang/String;Ljava/lang/String;)Lio/noties/markwon/html/jsoup/nodes/Attributes;

    .line 127
    :cond_43
    iput-object v1, p0, Lio/noties/markwon/html/jsoup/parser/Token$Tag;->pendingAttributeName:Ljava/lang/String;

    const/4 v0, 0x0

    .line 128
    iput-boolean v0, p0, Lio/noties/markwon/html/jsoup/parser/Token$Tag;->hasEmptyAttributeValue:Z

    .line 129
    iput-boolean v0, p0, Lio/noties/markwon/html/jsoup/parser/Token$Tag;->hasPendingAttributeValue:Z

    .line 130
    iget-object v0, p0, Lio/noties/markwon/html/jsoup/parser/Token$Tag;->pendingAttributeValue:Ljava/lang/StringBuilder;

    invoke-static {v0}, Lio/noties/markwon/html/jsoup/parser/Token$Tag;->reset(Ljava/lang/StringBuilder;)V

    .line 131
    iput-object v1, p0, Lio/noties/markwon/html/jsoup/parser/Token$Tag;->pendingAttributeValueS:Ljava/lang/String;

    return-void
.end method

.method final normalName()Ljava/lang/String;
    .registers 2

    .line 148
    iget-object v0, p0, Lio/noties/markwon/html/jsoup/parser/Token$Tag;->normalName:Ljava/lang/String;

    return-object v0
.end method

.method public reset()Lio/noties/markwon/html/jsoup/parser/Token$Tag;
    .registers 3

    const/4 v0, 0x0

    .line 97
    iput-object v0, p0, Lio/noties/markwon/html/jsoup/parser/Token$Tag;->tagName:Ljava/lang/String;

    .line 98
    iput-object v0, p0, Lio/noties/markwon/html/jsoup/parser/Token$Tag;->normalName:Ljava/lang/String;

    .line 99
    iput-object v0, p0, Lio/noties/markwon/html/jsoup/parser/Token$Tag;->pendingAttributeName:Ljava/lang/String;

    .line 100
    iget-object v1, p0, Lio/noties/markwon/html/jsoup/parser/Token$Tag;->pendingAttributeValue:Ljava/lang/StringBuilder;

    invoke-static {v1}, Lio/noties/markwon/html/jsoup/parser/Token$Tag;->reset(Ljava/lang/StringBuilder;)V

    .line 101
    iput-object v0, p0, Lio/noties/markwon/html/jsoup/parser/Token$Tag;->pendingAttributeValueS:Ljava/lang/String;

    const/4 v1, 0x0

    .line 102
    iput-boolean v1, p0, Lio/noties/markwon/html/jsoup/parser/Token$Tag;->hasEmptyAttributeValue:Z

    .line 103
    iput-boolean v1, p0, Lio/noties/markwon/html/jsoup/parser/Token$Tag;->hasPendingAttributeValue:Z

    .line 104
    iput-boolean v1, p0, Lio/noties/markwon/html/jsoup/parser/Token$Tag;->selfClosing:Z

    .line 105
    iput-object v0, p0, Lio/noties/markwon/html/jsoup/parser/Token$Tag;->attributes:Lio/noties/markwon/html/jsoup/nodes/Attributes;

    return-object p0
.end method

.method public bridge synthetic reset()Lio/noties/markwon/html/jsoup/parser/Token;
    .registers 2

    .line 79
    invoke-virtual {p0}, Lio/noties/markwon/html/jsoup/parser/Token$Tag;->reset()Lio/noties/markwon/html/jsoup/parser/Token$Tag;

    move-result-object v0

    return-object v0
.end method

.method final setEmptyAttributeValue()V
    .registers 2

    const/4 v0, 0x1

    .line 211
    iput-boolean v0, p0, Lio/noties/markwon/html/jsoup/parser/Token$Tag;->hasEmptyAttributeValue:Z

    return-void
.end method
