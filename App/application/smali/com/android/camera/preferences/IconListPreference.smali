.class public Lcom/android/camera/preferences/IconListPreference;
.super Lcom/android/camera/preferences/ListPreference;
.source "IconListPreference.java"


# instance fields
.field private mEnabled:Z

.field private mIconIds:[I

.field private mImageIds:[I

.field private mLargeIconIds:[I

.field private mSingleIconId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 38
    invoke-direct {p0, p1, p2}, Lcom/android/camera/preferences/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    .line 35
    iput-boolean v0, p0, Lcom/android/camera/preferences/IconListPreference;->mEnabled:Z

    .line 39
    sget-object v1, Lcom/android/camera/R$styleable;->IconListPreference:[I

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v1, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 41
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const/4 v1, 0x3

    .line 42
    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/android/camera/preferences/IconListPreference;->mSingleIconId:I

    .line 44
    invoke-virtual {p2, v2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    invoke-direct {p0, p1, v1}, Lcom/android/camera/preferences/IconListPreference;->getIds(Landroid/content/res/Resources;I)[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/preferences/IconListPreference;->mIconIds:[I

    const/4 v1, 0x2

    .line 46
    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    invoke-direct {p0, p1, v1}, Lcom/android/camera/preferences/IconListPreference;->getIds(Landroid/content/res/Resources;I)[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/preferences/IconListPreference;->mLargeIconIds:[I

    .line 48
    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/camera/preferences/IconListPreference;->getIds(Landroid/content/res/Resources;I)[I

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/preferences/IconListPreference;->mImageIds:[I

    .line 50
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private getIds(Landroid/content/res/Resources;I)[I
    .locals 3

    if-nez p2, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 91
    :cond_0
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object p0

    .line 92
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->length()I

    move-result p1

    .line 93
    new-array p2, p1, [I

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p1, :cond_1

    .line 95
    invoke-virtual {p0, v1, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    aput v2, p2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 97
    :cond_1
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return-object p2
.end method


# virtual methods
.method public filterUnsupported(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 103
    invoke-virtual {p0}, Lcom/android/camera/preferences/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 104
    new-instance v1, Lcom/android/camera/IntArray;

    invoke-direct {v1}, Lcom/android/camera/IntArray;-><init>()V

    .line 105
    new-instance v2, Lcom/android/camera/IntArray;

    invoke-direct {v2}, Lcom/android/camera/IntArray;-><init>()V

    .line 106
    new-instance v3, Lcom/android/camera/IntArray;

    invoke-direct {v3}, Lcom/android/camera/IntArray;-><init>()V

    .line 108
    array-length v4, v0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_3

    .line 109
    aget-object v6, v0, v5

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v6}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v6

    if-ltz v6, :cond_2

    .line 110
    iget-object v6, p0, Lcom/android/camera/preferences/IconListPreference;->mIconIds:[I

    if-eqz v6, :cond_0

    aget v6, v6, v5

    invoke-virtual {v1, v6}, Lcom/android/camera/IntArray;->add(I)V

    .line 111
    :cond_0
    iget-object v6, p0, Lcom/android/camera/preferences/IconListPreference;->mLargeIconIds:[I

    if-eqz v6, :cond_1

    aget v6, v6, v5

    invoke-virtual {v2, v6}, Lcom/android/camera/IntArray;->add(I)V

    .line 112
    :cond_1
    iget-object v6, p0, Lcom/android/camera/preferences/IconListPreference;->mImageIds:[I

    if-eqz v6, :cond_2

    aget v6, v6, v5

    invoke-virtual {v3, v6}, Lcom/android/camera/IntArray;->add(I)V

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 115
    :cond_3
    iget-object v0, p0, Lcom/android/camera/preferences/IconListPreference;->mIconIds:[I

    if-eqz v0, :cond_4

    invoke-virtual {v1}, Lcom/android/camera/IntArray;->size()I

    move-result v0

    new-array v0, v0, [I

    invoke-virtual {v1, v0}, Lcom/android/camera/IntArray;->toArray([I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/preferences/IconListPreference;->mIconIds:[I

    .line 116
    :cond_4
    iget-object v0, p0, Lcom/android/camera/preferences/IconListPreference;->mLargeIconIds:[I

    if-eqz v0, :cond_5

    .line 117
    invoke-virtual {v2}, Lcom/android/camera/IntArray;->size()I

    move-result v0

    new-array v0, v0, [I

    invoke-virtual {v2, v0}, Lcom/android/camera/IntArray;->toArray([I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/preferences/IconListPreference;->mLargeIconIds:[I

    .line 119
    :cond_5
    iget-object v0, p0, Lcom/android/camera/preferences/IconListPreference;->mImageIds:[I

    if-eqz v0, :cond_6

    invoke-virtual {v3}, Lcom/android/camera/IntArray;->size()I

    move-result v0

    new-array v0, v0, [I

    invoke-virtual {v3, v0}, Lcom/android/camera/IntArray;->toArray([I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/preferences/IconListPreference;->mImageIds:[I

    .line 120
    :cond_6
    invoke-super {p0, p1}, Lcom/android/camera/preferences/ListPreference;->filterUnsupported(Ljava/util/List;)V

    return-void
.end method

.method public getEnable()Z
    .locals 0

    .line 86
    iget-boolean p0, p0, Lcom/android/camera/preferences/IconListPreference;->mEnabled:Z

    return p0
.end method

.method public getIconIds()[I
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/android/camera/preferences/IconListPreference;->mIconIds:[I

    return-object p0
.end method

.method public getImageIds()[I
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/android/camera/preferences/IconListPreference;->mImageIds:[I

    return-object p0
.end method

.method public getSingleIcon()I
    .locals 0

    .line 54
    iget p0, p0, Lcom/android/camera/preferences/IconListPreference;->mSingleIconId:I

    return p0
.end method
