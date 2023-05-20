.class public Lcom/nimbusds/jose/shaded/json/JSONStyle;
.super Ljava/lang/Object;
.source "JSONStyle.java"


# static fields
.field public static final FLAG_AGRESSIVE:I = 0x8

.field public static final FLAG_IGNORE_NULL:I = 0x10

.field public static final FLAG_PROTECT_4WEB:I = 0x2

.field public static final FLAG_PROTECT_KEYS:I = 0x1

.field public static final FLAG_PROTECT_VALUES:I = 0x4

.field public static final LT_COMPRESS:Lcom/nimbusds/jose/shaded/json/JSONStyle;

.field public static final MAX_COMPRESS:Lcom/nimbusds/jose/shaded/json/JSONStyle;

.field public static final NO_COMPRESS:Lcom/nimbusds/jose/shaded/json/JSONStyle;


# instance fields
.field private _ignore_null:Z

.field private _protect4Web:Z

.field private _protectKeys:Z

.field private _protectValues:Z

.field private esc:Lcom/nimbusds/jose/shaded/json/JStylerObj$StringProtector;

.field private mpKey:Lcom/nimbusds/jose/shaded/json/JStylerObj$MustProtect;

.field private mpValue:Lcom/nimbusds/jose/shaded/json/JStylerObj$MustProtect;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 49
    new-instance v0, Lcom/nimbusds/jose/shaded/json/JSONStyle;

    invoke-direct {v0}, Lcom/nimbusds/jose/shaded/json/JSONStyle;-><init>()V

    sput-object v0, Lcom/nimbusds/jose/shaded/json/JSONStyle;->NO_COMPRESS:Lcom/nimbusds/jose/shaded/json/JSONStyle;

    .line 50
    new-instance v0, Lcom/nimbusds/jose/shaded/json/JSONStyle;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Lcom/nimbusds/jose/shaded/json/JSONStyle;-><init>(I)V

    sput-object v0, Lcom/nimbusds/jose/shaded/json/JSONStyle;->MAX_COMPRESS:Lcom/nimbusds/jose/shaded/json/JSONStyle;

    .line 54
    new-instance v0, Lcom/nimbusds/jose/shaded/json/JSONStyle;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/nimbusds/jose/shaded/json/JSONStyle;-><init>(I)V

    sput-object v0, Lcom/nimbusds/jose/shaded/json/JSONStyle;->LT_COMPRESS:Lcom/nimbusds/jose/shaded/json/JSONStyle;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 94
    invoke-direct {p0, v0}, Lcom/nimbusds/jose/shaded/json/JSONStyle;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 5

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    and-int/lit8 v0, p1, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_b

    move v0, v2

    goto :goto_c

    :cond_b
    move v0, v1

    .line 67
    :goto_c
    iput-boolean v0, p0, Lcom/nimbusds/jose/shaded/json/JSONStyle;->_protectKeys:Z

    and-int/lit8 v0, p1, 0x4

    if-nez v0, :cond_14

    move v0, v2

    goto :goto_15

    :cond_14
    move v0, v1

    .line 68
    :goto_15
    iput-boolean v0, p0, Lcom/nimbusds/jose/shaded/json/JSONStyle;->_protectValues:Z

    and-int/lit8 v0, p1, 0x2

    if-nez v0, :cond_1d

    move v0, v2

    goto :goto_1e

    :cond_1d
    move v0, v1

    .line 69
    :goto_1e
    iput-boolean v0, p0, Lcom/nimbusds/jose/shaded/json/JSONStyle;->_protect4Web:Z

    and-int/lit8 v0, p1, 0x10

    if-lez v0, :cond_25

    move v1, v2

    .line 70
    :cond_25
    iput-boolean v1, p0, Lcom/nimbusds/jose/shaded/json/JSONStyle;->_ignore_null:Z

    and-int/lit8 p1, p1, 0x8

    if-lez p1, :cond_2e

    .line 73
    sget-object p1, Lcom/nimbusds/jose/shaded/json/JStylerObj;->MP_AGGRESIVE:Lcom/nimbusds/jose/shaded/json/JStylerObj$MPAgressive;

    goto :goto_30

    .line 75
    :cond_2e
    sget-object p1, Lcom/nimbusds/jose/shaded/json/JStylerObj;->MP_SIMPLE:Lcom/nimbusds/jose/shaded/json/JStylerObj$MPSimple;

    .line 77
    :goto_30
    iget-boolean v0, p0, Lcom/nimbusds/jose/shaded/json/JSONStyle;->_protectValues:Z

    if-eqz v0, :cond_39

    .line 78
    sget-object v0, Lcom/nimbusds/jose/shaded/json/JStylerObj;->MP_TRUE:Lcom/nimbusds/jose/shaded/json/JStylerObj$MPTrue;

    iput-object v0, p0, Lcom/nimbusds/jose/shaded/json/JSONStyle;->mpValue:Lcom/nimbusds/jose/shaded/json/JStylerObj$MustProtect;

    goto :goto_3b

    .line 80
    :cond_39
    iput-object p1, p0, Lcom/nimbusds/jose/shaded/json/JSONStyle;->mpValue:Lcom/nimbusds/jose/shaded/json/JStylerObj$MustProtect;

    .line 82
    :goto_3b
    iget-boolean v0, p0, Lcom/nimbusds/jose/shaded/json/JSONStyle;->_protectKeys:Z

    if-eqz v0, :cond_44

    .line 83
    sget-object p1, Lcom/nimbusds/jose/shaded/json/JStylerObj;->MP_TRUE:Lcom/nimbusds/jose/shaded/json/JStylerObj$MPTrue;

    iput-object p1, p0, Lcom/nimbusds/jose/shaded/json/JSONStyle;->mpKey:Lcom/nimbusds/jose/shaded/json/JStylerObj$MustProtect;

    goto :goto_46

    .line 85
    :cond_44
    iput-object p1, p0, Lcom/nimbusds/jose/shaded/json/JSONStyle;->mpKey:Lcom/nimbusds/jose/shaded/json/JStylerObj$MustProtect;

    .line 87
    :goto_46
    iget-boolean p1, p0, Lcom/nimbusds/jose/shaded/json/JSONStyle;->_protect4Web:Z

    if-eqz p1, :cond_4f

    .line 88
    sget-object p1, Lcom/nimbusds/jose/shaded/json/JStylerObj;->ESCAPE4Web:Lcom/nimbusds/jose/shaded/json/JStylerObj$Escape4Web;

    iput-object p1, p0, Lcom/nimbusds/jose/shaded/json/JSONStyle;->esc:Lcom/nimbusds/jose/shaded/json/JStylerObj$StringProtector;

    goto :goto_53

    .line 90
    :cond_4f
    sget-object p1, Lcom/nimbusds/jose/shaded/json/JStylerObj;->ESCAPE_LT:Lcom/nimbusds/jose/shaded/json/JStylerObj$EscapeLT;

    iput-object p1, p0, Lcom/nimbusds/jose/shaded/json/JSONStyle;->esc:Lcom/nimbusds/jose/shaded/json/JStylerObj$StringProtector;

    :goto_53
    return-void
.end method


# virtual methods
.method public arrayNextElm(Ljava/lang/Appendable;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x2c

    .line 203
    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    return-void
.end method

.method public arrayObjectEnd(Ljava/lang/Appendable;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public arrayStart(Ljava/lang/Appendable;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x5b

    .line 183
    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    return-void
.end method

.method public arrayStop(Ljava/lang/Appendable;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x5d

    .line 190
    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    return-void
.end method

.method public arrayfirstObject(Ljava/lang/Appendable;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public escape(Ljava/lang/String;Ljava/lang/Appendable;)V
    .registers 4

    .line 136
    iget-object v0, p0, Lcom/nimbusds/jose/shaded/json/JSONStyle;->esc:Lcom/nimbusds/jose/shaded/json/JStylerObj$StringProtector;

    invoke-interface {v0, p1, p2}, Lcom/nimbusds/jose/shaded/json/JStylerObj$StringProtector;->escape(Ljava/lang/String;Ljava/lang/Appendable;)V

    return-void
.end method

.method public ignoreNull()Z
    .registers 2

    .line 110
    iget-boolean v0, p0, Lcom/nimbusds/jose/shaded/json/JSONStyle;->_ignore_null:Z

    return v0
.end method

.method public indent()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public mustProtectKey(Ljava/lang/String;)Z
    .registers 3

    .line 118
    iget-object v0, p0, Lcom/nimbusds/jose/shaded/json/JSONStyle;->mpKey:Lcom/nimbusds/jose/shaded/json/JStylerObj$MustProtect;

    invoke-interface {v0, p1}, Lcom/nimbusds/jose/shaded/json/JStylerObj$MustProtect;->mustBeProtect(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public mustProtectValue(Ljava/lang/String;)Z
    .registers 3

    .line 122
    iget-object v0, p0, Lcom/nimbusds/jose/shaded/json/JSONStyle;->mpValue:Lcom/nimbusds/jose/shaded/json/JStylerObj$MustProtect;

    invoke-interface {v0, p1}, Lcom/nimbusds/jose/shaded/json/JStylerObj$MustProtect;->mustBeProtect(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public objectElmStop(Ljava/lang/Appendable;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public objectEndOfKey(Ljava/lang/Appendable;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x3a

    .line 176
    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    return-void
.end method

.method public objectFirstStart(Ljava/lang/Appendable;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public objectNext(Ljava/lang/Appendable;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x2c

    .line 163
    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    return-void
.end method

.method public objectStart(Ljava/lang/Appendable;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x7b

    .line 143
    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    return-void
.end method

.method public objectStop(Ljava/lang/Appendable;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x7d

    .line 150
    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    return-void
.end method

.method public protect4Web()Z
    .registers 2

    .line 106
    iget-boolean v0, p0, Lcom/nimbusds/jose/shaded/json/JSONStyle;->_protect4Web:Z

    return v0
.end method

.method public protectKeys()Z
    .registers 2

    .line 98
    iget-boolean v0, p0, Lcom/nimbusds/jose/shaded/json/JSONStyle;->_protectKeys:Z

    return v0
.end method

.method public protectValues()Z
    .registers 2

    .line 102
    iget-boolean v0, p0, Lcom/nimbusds/jose/shaded/json/JSONStyle;->_protectValues:Z

    return v0
.end method

.method public writeString(Ljava/lang/Appendable;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 126
    invoke-virtual {p0, p2}, Lcom/nimbusds/jose/shaded/json/JSONStyle;->mustProtectValue(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 127
    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_15

    :cond_a
    const/16 v0, 0x22

    .line 129
    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 130
    invoke-static {p2, p1, p0}, Lcom/nimbusds/jose/shaded/json/JSONValue;->escape(Ljava/lang/String;Ljava/lang/Appendable;Lcom/nimbusds/jose/shaded/json/JSONStyle;)V

    .line 131
    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    :goto_15
    return-void
.end method
