<aura:application extends="force:slds">
    <aura:attribute name="int" type="Boolean" default="true"/>
    <lightning:button variant="base" label="Base" title="Base action" onclick="{! c.handleClick }"/>
    <aura:if isTrue="{!v.int}">
    <c:Renderercomp/>
    </aura:if>
</aura:application>