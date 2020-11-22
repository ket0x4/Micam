.class Lcom/android/camera/ui/ManualFocusPositionPopup$HorizontalSlideViewAdapter;
.super Lcom/android/camera/ui/HorizontalSlideView$HorizontalDrawAdapter;
.source "ManualFocusPositionPopup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/ManualFocusPositionPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "HorizontalSlideViewAdapter"
.end annotation


# instance fields
.field private mEntries:[Ljava/lang/CharSequence;

.field mPaint:Landroid/graphics/Paint;

.field final synthetic this$0:Lcom/android/camera/ui/ManualFocusPositionPopup;


# direct methods
.method public constructor <init>(Lcom/android/camera/ui/ManualFocusPositionPopup;[Ljava/lang/CharSequence;)V
    .locals 1

    .line 147
    iput-object p1, p0, Lcom/android/camera/ui/ManualFocusPositionPopup$HorizontalSlideViewAdapter;->this$0:Lcom/android/camera/ui/ManualFocusPositionPopup;

    invoke-direct {p0}, Lcom/android/camera/ui/HorizontalSlideView$HorizontalDrawAdapter;-><init>()V

    .line 148
    iput-object p2, p0, Lcom/android/camera/ui/ManualFocusPositionPopup$HorizontalSlideViewAdapter;->mEntries:[Ljava/lang/CharSequence;

    .line 150
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/android/camera/ui/ManualFocusPositionPopup$HorizontalSlideViewAdapter;->mPaint:Landroid/graphics/Paint;

    .line 151
    iget-object p2, p0, Lcom/android/camera/ui/ManualFocusPositionPopup$HorizontalSlideViewAdapter;->mPaint:Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 152
    iget-object p2, p0, Lcom/android/camera/ui/ManualFocusPositionPopup$HorizontalSlideViewAdapter;->mPaint:Landroid/graphics/Paint;

    invoke-static {p1}, Lcom/android/camera/ui/ManualFocusPositionPopup;->access$000(Lcom/android/camera/ui/ManualFocusPositionPopup;)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 153
    iget-object p2, p0, Lcom/android/camera/ui/ManualFocusPositionPopup$HorizontalSlideViewAdapter;->mPaint:Landroid/graphics/Paint;

    invoke-static {p1}, Lcom/android/camera/ui/ManualFocusPositionPopup;->access$100(Lcom/android/camera/ui/ManualFocusPositionPopup;)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 154
    iget-object p0, p0, Lcom/android/camera/ui/ManualFocusPositionPopup$HorizontalSlideViewAdapter;->mPaint:Landroid/graphics/Paint;

    sget-object p1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    return-void
.end method

.method private drawText(ILandroid/graphics/Canvas;)V
    .locals 2

    .line 158
    iget-object v0, p0, Lcom/android/camera/ui/ManualFocusPositionPopup$HorizontalSlideViewAdapter;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->ascent()F

    move-result v0

    iget-object v1, p0, Lcom/android/camera/ui/ManualFocusPositionPopup$HorizontalSlideViewAdapter;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->descent()F

    move-result v1

    add-float/2addr v0, v1

    .line 159
    iget-object v1, p0, Lcom/android/camera/ui/ManualFocusPositionPopup$HorizontalSlideViewAdapter;->mEntries:[Ljava/lang/CharSequence;

    aget-object p1, v1, p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    neg-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iget-object p0, p0, Lcom/android/camera/ui/ManualFocusPositionPopup$HorizontalSlideViewAdapter;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {p2, p1, v1, v0, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method


# virtual methods
.method public draw(ILandroid/graphics/Canvas;Z)V
    .locals 6

    .line 164
    iget-object v0, p0, Lcom/android/camera/ui/ManualFocusPositionPopup$HorizontalSlideViewAdapter;->mPaint:Landroid/graphics/Paint;

    if-eqz p3, :cond_0

    const/high16 v1, -0x10000

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 166
    rem-int/lit8 v0, p1, 0xa

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 167
    iget-object v0, p0, Lcom/android/camera/ui/ManualFocusPositionPopup$HorizontalSlideViewAdapter;->mPaint:Landroid/graphics/Paint;

    if-eqz p3, :cond_1

    .line 168
    iget-object p3, p0, Lcom/android/camera/ui/ManualFocusPositionPopup$HorizontalSlideViewAdapter;->this$0:Lcom/android/camera/ui/ManualFocusPositionPopup;

    invoke-static {p3}, Lcom/android/camera/ui/ManualFocusPositionPopup;->access$300(Lcom/android/camera/ui/ManualFocusPositionPopup;)Landroid/content/res/ColorStateList;

    move-result-object p3

    invoke-static {}, Lcom/android/camera/ui/ManualFocusPositionPopup;->access$200()[I

    move-result-object v2

    invoke-virtual {p3, v2, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p3

    goto :goto_1

    .line 169
    :cond_1
    iget-object p3, p0, Lcom/android/camera/ui/ManualFocusPositionPopup$HorizontalSlideViewAdapter;->this$0:Lcom/android/camera/ui/ManualFocusPositionPopup;

    invoke-static {p3}, Lcom/android/camera/ui/ManualFocusPositionPopup;->access$300(Lcom/android/camera/ui/ManualFocusPositionPopup;)Landroid/content/res/ColorStateList;

    move-result-object p3

    invoke-static {}, Lcom/android/camera/ui/ManualFocusPositionPopup;->access$400()[I

    move-result-object v2

    invoke-virtual {p3, v2, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p3

    .line 167
    :goto_1
    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 170
    div-int/lit8 p1, p1, 0xa

    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/ManualFocusPositionPopup$HorizontalSlideViewAdapter;->drawText(ILandroid/graphics/Canvas;)V

    goto :goto_3

    .line 172
    :cond_2
    iget-object p1, p0, Lcom/android/camera/ui/ManualFocusPositionPopup$HorizontalSlideViewAdapter;->mPaint:Landroid/graphics/Paint;

    if-eqz p3, :cond_3

    .line 173
    iget-object p3, p0, Lcom/android/camera/ui/ManualFocusPositionPopup$HorizontalSlideViewAdapter;->this$0:Lcom/android/camera/ui/ManualFocusPositionPopup;

    invoke-static {p3}, Lcom/android/camera/ui/ManualFocusPositionPopup;->access$300(Lcom/android/camera/ui/ManualFocusPositionPopup;)Landroid/content/res/ColorStateList;

    move-result-object p3

    invoke-static {}, Lcom/android/camera/ui/ManualFocusPositionPopup;->access$200()[I

    move-result-object v0

    invoke-virtual {p3, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p3

    goto :goto_2

    .line 174
    :cond_3
    iget-object p3, p0, Lcom/android/camera/ui/ManualFocusPositionPopup$HorizontalSlideViewAdapter;->this$0:Lcom/android/camera/ui/ManualFocusPositionPopup;

    invoke-static {p3}, Lcom/android/camera/ui/ManualFocusPositionPopup;->access$500(Lcom/android/camera/ui/ManualFocusPositionPopup;)I

    move-result p3

    .line 172
    :goto_2
    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v1, 0x0

    .line 175
    iget-object p1, p0, Lcom/android/camera/ui/ManualFocusPositionPopup$HorizontalSlideViewAdapter;->this$0:Lcom/android/camera/ui/ManualFocusPositionPopup;

    invoke-static {p1}, Lcom/android/camera/ui/ManualFocusPositionPopup;->access$600(Lcom/android/camera/ui/ManualFocusPositionPopup;)F

    move-result p1

    neg-float v2, p1

    const/4 v3, 0x0

    iget-object p1, p0, Lcom/android/camera/ui/ManualFocusPositionPopup$HorizontalSlideViewAdapter;->this$0:Lcom/android/camera/ui/ManualFocusPositionPopup;

    invoke-static {p1}, Lcom/android/camera/ui/ManualFocusPositionPopup;->access$600(Lcom/android/camera/ui/ManualFocusPositionPopup;)F

    move-result v4

    iget-object v5, p0, Lcom/android/camera/ui/ManualFocusPositionPopup$HorizontalSlideViewAdapter;->mPaint:Landroid/graphics/Paint;

    move-object v0, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :goto_3
    return-void
.end method

.method public getAlign(I)Landroid/graphics/Paint$Align;
    .locals 0

    .line 199
    sget-object p0, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    return-object p0
.end method

.method public getCount()I
    .locals 0

    const/16 p0, 0x65

    return p0
.end method

.method public measureGap(I)F
    .locals 1

    .line 190
    rem-int/lit8 v0, p1, 0xa

    if-eqz v0, :cond_1

    add-int/lit8 p1, p1, 0x1

    rem-int/lit8 p1, p1, 0xa

    if-nez p1, :cond_0

    goto :goto_1

    .line 193
    :cond_0
    iget-object p0, p0, Lcom/android/camera/ui/ManualFocusPositionPopup$HorizontalSlideViewAdapter;->this$0:Lcom/android/camera/ui/ManualFocusPositionPopup;

    invoke-static {p0}, Lcom/android/camera/ui/ManualFocusPositionPopup;->access$800(Lcom/android/camera/ui/ManualFocusPositionPopup;)I

    move-result p0

    :goto_0
    int-to-float p0, p0

    return p0

    .line 191
    :cond_1
    :goto_1
    iget-object p0, p0, Lcom/android/camera/ui/ManualFocusPositionPopup$HorizontalSlideViewAdapter;->this$0:Lcom/android/camera/ui/ManualFocusPositionPopup;

    invoke-static {p0}, Lcom/android/camera/ui/ManualFocusPositionPopup;->access$700(Lcom/android/camera/ui/ManualFocusPositionPopup;)I

    move-result p0

    goto :goto_0
.end method

.method public measureWidth(I)F
    .locals 1

    .line 181
    rem-int/lit8 v0, p1, 0xa

    if-nez v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/android/camera/ui/ManualFocusPositionPopup$HorizontalSlideViewAdapter;->mPaint:Landroid/graphics/Paint;

    iget-object p0, p0, Lcom/android/camera/ui/ManualFocusPositionPopup$HorizontalSlideViewAdapter;->mEntries:[Ljava/lang/CharSequence;

    div-int/lit8 p1, p1, 0xa

    aget-object p0, p0, p1

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p0

    return p0

    .line 184
    :cond_0
    iget-object p0, p0, Lcom/android/camera/ui/ManualFocusPositionPopup$HorizontalSlideViewAdapter;->this$0:Lcom/android/camera/ui/ManualFocusPositionPopup;

    invoke-static {p0}, Lcom/android/camera/ui/ManualFocusPositionPopup;->access$000(Lcom/android/camera/ui/ManualFocusPositionPopup;)I

    move-result p0

    int-to-float p0, p0

    return p0
.end method
