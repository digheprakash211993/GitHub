<aura:application extends="force:slds">
    <aura:attribute name="flag" type="boolean" default="true"/>
    <lightning:button variant="Button" label="Base1" title="Base action" onclick="{! c.handleClick }"/>
    <aura:if isTrue="{!v.flag}">
    <c.Renderer2/>
     </aura:if>
    
</aura:application>